namespace :user do
  desc "Enrinch all users with Clearbit API"
  task update_all: :environment do
    #call all users
    users = User.all
    # update the users one by one
    puts "Updating a total of #{users.size}"
    users.each do |user|
      UpdateUserJob.perform_later(user)
    end
    #enque in the background jobs
    puts "users updated!"
  end

end
