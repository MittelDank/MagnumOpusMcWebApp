require "active_support/concern"

module MulticraftAPI
  include ActiveSupport::Concern

  def send_server_command(command)
    puts command, "in send_server_command"
    # Rails.application.credentials.hosting["url"],
    # Rails.application.credentials.hosting["user"],
    # Rails.application.credentials.hosting["key"],
    # Rails.application.credentials.hosting["server_id"]
  end
end
