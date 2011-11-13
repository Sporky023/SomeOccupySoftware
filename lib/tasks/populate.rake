namespace :db do
  
  task :populate => :environment do
    
    User.create(:email => "bob@email.com", :password => "password", :password_confirmation => "password")
    User.create(:email => "mary@email.com", :password => "password", :password_confirmation => "password")
    User.create(:email => "alice@email.com", :password => "password", :password_confirmation => "password")
    User.create(:email => "sue@email.com", :password => "password", :password_confirmation => "password")
    
    Document.populate(100) do |document|
      document.title = Faker::Lorem.sentence
      document.body = Faker::Lorem.paragraph
      document.user_id = User.all.shuffle.first.id
    end
    
    
  end
  
end