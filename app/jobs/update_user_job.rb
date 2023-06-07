class UpdateUserJob < ApplicationJob
  queue_as :default

  def perform(user)
    puts "calling Clearbit API"
    puts "#{user.email} is beeing process"
    # call the API
    sleep 2
    #update users in DB
    #user.update(first_name: output_from_api)
    puts "Done! Enrichment done"
  end
end
