# README

Nomster is a Yelp clone, developed as practice for The Firehose Project. Flixter is hosted on Heroku, and can be accessed by clicking [here](http://flixter-gonsanchezs.heroku.com/). 

A few things to consider:
* Flixter runs on Ruby 2.0.0, and Rails 4.0.4
* Database is postgresql

### Installation

Setting up Nomster locally is super easy :rocket:

1 - Clone the repo:
```git clone https://github.com/GonSanchezS/nomster.git```

2 - Install it: 
```bundle install```

3 - Create the database:
```rake db:create```

4 - Run the migration:
```rake db:migrate```

Depending on your environment and setup configuration you  may need to change ```config/database.yml```.

### Thanks! :heart_eyes:

Thanks for checking it out! If you have some feedback, you can always find me at [@gonsanchezs](https://www.twitter.com/gonsanchezs).
