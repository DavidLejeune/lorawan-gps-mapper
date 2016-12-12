require 'rubygems'
require 'mqtt'
require 'json'

class MqttJob < ApplicationJob
  queue_as :default

  def perform

    ttn_host = "staging.thethingsnetwork.org"
    port = 1883
    username = '70B3D57ED000165A'
    password = 'FbHtfC4+cAXmgkAicItU15hBbrdQdKcu/tBrwE+UjVw='
    sensor_id = '+/devices/+/up'

    # Publish example
    MQTT::Client.connect(
    :host => ttn_host,
    :port => port,
    :username => username,
    :password => password) do |c|
      # If you pass a block to the get method, then it will loop
      c.get(sensor_id) do |topic,message|
        obj = JSON.parse("#{message}")
        dev_eui = obj['dev_eui'].to_s
        latitude = obj['fields']['lat'].to_f
        longitude = obj['fields']['long'].to_f
        accuracy = obj['fields']['hdop'].to_i
        height = obj['fields']['height'].to_i
        puts "dev_eui = #{dev_eui}"
        puts "latitude = #{latitude}"
        puts "longitude = #{longitude}"
        #puts "#{obj}"

        sensor = Sensor.find_or_create_by(dev_eui: dev_eui)
        # puts sensor.inspect
        sensor.data.create({longitude: longitude, latitude: latitude, height: height, accuracy: accuracy})

        #data = Data.create({longitude: longitude, latitude: latitude, height: height, accuracy: accuracy, senor_id: dev_eui})

      end
    end
  end
end
