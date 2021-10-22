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



To run the project 

Create a User, Order for checkouts page with fully payment page

For pre-built checkout page

1. rails s
2. go to urls: "http://localhost:3000/checkouts"
3. In payment controller >> create_checkout_session >> set price id
4. In config/secrets.yml file set your stripe's secret key and publishable key
