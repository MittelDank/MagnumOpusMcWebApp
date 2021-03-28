class SendServerCommandJob < ApplicationJob
  include SuckerPunch::Job
  queue_as :default

  def perform(*args)
    # Do something later
    puts 'i am in the background job!'
  end
end
