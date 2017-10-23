require 'csv'    


namespace :import_people_csv do
  task :create_people => :environment do
    people = CSV.read('people.csv', :encoding => 'windows-1251:utf-8', headers:true)

    people.each do |people_row|
    Person.create!(people_row.to_hash) 
    end

  end
end 

