require 'rubygems'
require 'mqtt'
require 'json'

class MqttJob < ApplicationJob
  queue_as :default

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
      dev_eui = obj['dev_eui']
      latitude = obj['fields']['lat']
      longitude = obj['fields']['long']
      puts "dev_eui = #{dev_eui}"
      puts "latitude = #{latitude}"
      puts "longitude = #{longitude}"

    end
  end
end
