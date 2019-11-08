# Web based application - The Rush

This is an application to display NFL players' rushing statistics. This is built in Ruby on Rails. The input file which contains all the statistics is parsed and all information is migrated to a relational database (PostgreSQL). The home page displays all the records in ascending order of player name by default. This sorting can be altered as per the requirement of the user by clicking in the column header: Total Rushing Yards, Longest Rush and Total Rushing Touchdowns. Records can be filtered by the player's name using the search bar on the top of the page. Below it, two buttons are placed; one to reset all the sorting and filter and another to export a CSV file with all applied changes. Pagination is added for better viewing and management of records where each page displays around 10 records.

System used:
- ruby 2.6.3p62
- Rails 6.0.0
- postgres (PostgreSQL) 11.5 (>=8.9.0)
- node v12.13.0 (>=8.9.0)
- yarn 1.19.1

Step to follow:
- Set up postgres with role "devuser" and password "devuser"
- Start postgres server
- Run commands 'npm install' and 'yarn install'
- Create database "nfl_development" and then create a table "players"
	- Command "rails db:create && rails db:migrate"
- Migrate all data from json file to database
  - Command "rails import:player_records"
- Install all the required gems
  - Command "bundle install"
- Start rails server
	- Command "bundle exec rails s"
- In browser, visit "http://localhost:3000/"