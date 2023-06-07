class FakeJob < ApplicationJob
  queue_as :default

  def perform
    puts "I'm starting a fake job"
    sleep 3
    puts "Ok job done!"
  end
end
