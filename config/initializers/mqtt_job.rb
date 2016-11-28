Rails.application.config.after_initialize do
    MqttJob.perform_later
end
