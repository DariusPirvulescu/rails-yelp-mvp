# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Models
Schema
A restaurant has a name, an address, a phone number, a category (chinese, italian…)
and many reviews
A review has content (the text), a rating (between 0 and 5) and references a restaurant
Question: Can you draw this simple schema at db.lewagon.com? Discuss with your buddy.

rails g model restaurant name:string address:string, phone:integer category:string

rails g model review content:text rating:integer restaurant:references
