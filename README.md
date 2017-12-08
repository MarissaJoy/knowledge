# README

## Versions
- ruby 2.3.4
- rails 5.1.4

## System dependencies
- PostgreSQL 9.6

## Configuration
```
cp config/database.yml.example config/database.yml
cp config/application.yml.example config/application.yml

```

## Setup
```
bundle install
```

### Database initialization

```
bundle exec rails db:setup
```

## How to run the test suite

```
bundle exec rspec
```

OR

```
bundle exec guard # (for developemnt)
```

* Deployment instructions

Configured on heroku -- appname: TBD
