namespace :db do
  
  task :populate => :environment do
    
    Document.populate(100) do |document|
      document.title = Faker::Lorem.sentence
      document.body = Faker::Lorem.paragraph
    end
    
    
  end
  
end