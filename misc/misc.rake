require 'csv'

file_path_to_csv = "#{Rails.root.join}/lib/tasks/misc"

namespace :misc do
  task :import_countries => :environment do
	#TODO: Warn and prompt the user about destroying the countries data before rerunning the task 
    puts 'Started importing countries and cities. This may take a few minutes.'
    #Country.destroy_all #uncomment if you plan to rerun this rake task to prevent duplication of records
    CSV.foreach("#{file_path_to_csv}/countries_cities_lats_longs.csv") do |row|
      country_name = row[0]
      city_name = row[1]
      latitude = row[2]
      longitude = row[3]
      altitude = row[4]
      Country.create(name: country_name, city: city_name, latitude: latitude, longitude: longitude, altitude: altitude)
    end
    puts 'Done importing countries and cities'
    puts 'Happy coding!'
  end
end