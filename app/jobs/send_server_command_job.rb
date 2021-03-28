class SendServerCommandJob < ApplicationJob
  include SuckerPunch::Job
  queue_as :default

  def perform(command)
    url = Rails.application.credentials.hosting[:url]
    user =  Rails.application.credentials.hosting[:user]
    key = Rails.application.credentials.hosting[:api_key]
    server_id = Rails.application.credentials.hosting[:server_id].to_s

    fork { exec( 'node', './multicraft_api/api_module.js', url, user, key, server_id, command ) }
  end
end
