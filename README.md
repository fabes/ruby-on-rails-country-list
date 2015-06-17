# Rake task for importing countries
A CSV with a list of countries, cities, lats/longs, altitude is included.

### How to
Ensure you have the appropriate model setup and the directory is moved to lib/tasks/ before performing the rake task.


##### Model Setup
```ruby
rails g model Country country_name:string city:string latitude:integer longitude:integer altitude:integer
```
then run the migration
```ruby
rake db:migrate
```

##### Running the rake task
Now that you have your model setup, go ahead and perform the rake task to start importing the countries data into your app.
```ruby
rake misc:import_countries
```
Give it a few and thats it!

##### Issues or Suggestions?
If you encounter any issues or have a suggestion, please feel free to let me know [here](https://github.com/fabes/ruby-on-rails-country-list/issues)


