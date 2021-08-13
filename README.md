# Expense Tracker Api

This is a simple resful api purposely built for expense tracker js app (https://github.com/ezravalmores/expense-tracker)

## Tech Stack

This is using Ruby on Rails.

This is using postgresql for Database.

## How to run locally

You must have a ruby version `2.7.1` or higher.

Install dependencies. `bundle install`

Create Db `bundle exec rake db:create`

Run migrations `bundle exec rake db:migrate`

For it to work smootly connected to the React javascript app mentioned above, run it in port 3000 or simple the default port.

`rails s -p 3000`
