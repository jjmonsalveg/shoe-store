# README

These steps are necessary to the application up and running.

* Ruby version
    * \>= 2.3.4
* Rails version
    * \>= 5.1 
    
* System dependencies
  * Yarn
  * NPM
  
* Run project:
  * bundle install
  * yarn install
  * rails db:setup
  * rails s
  
* Run specs:
  * bundle exec rspec

* Import postman file:
  * path ./postman/
  * file:shoe-store.postman_collectionv1.json
  * variable:{{url}}
  * url value: localhost:3000/api/
  