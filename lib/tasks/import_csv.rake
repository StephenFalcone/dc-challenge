require 'csv'    

namespace :import_csv do |import_csv_namespace|
  task :create_people => :environment do
    people = CSV.foreach('people.csv', :encoding => 'ISO-8859-1', headers:true) do |row|

    Person.create( 
    :birthdate => Date.strptime(row[10], '%m/%d/%y'),
    :id => row[0],
    :first_name => row[1],
    :last_name => row[2],
    :email => row[3],
    :gender => row[4],
    :city => row[5],
    :street => row[6],
    :state => row[7],
    :country => row[8],
    :language => row[9]
    )

    end
  end

  task :create_events => :environment do
    events = CSV.foreach('events.csv', :encoding => 'ISO-8859-1', headers:true) do |row|

      Event.create(row.to_hash)

    end
  end

  task :create_assistances => :environment do 
    assistance = CSV.foreach('assistance.csv', :encoding => 'ISO-8859-1', headers:true) do |row|

      Assistance.create(row.to_hash)

    end
  end

    task :all do
    import_csv_namespace.tasks.each do |task|
      Rake::Task[task].invoke
      end
    end
  
  
end 

