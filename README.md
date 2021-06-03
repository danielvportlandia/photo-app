# PHOTO APP

This is the photo-app application from the Complete Ruby on Rails Developer course. Click the link to see it in action [Photo App]().

## Versions

| Name             | Version                |
|------------------|------------------------|
| Ruby             | 2.6.6p146              |
| Rails            | 5.2.1                  |
| bcrypt           | 3.1.7                  |
&nbsp;

## Development

Create a new rails project

```console
rails new <project-name>
```

When modifying the columns on models in the DB, run:

```console
rails generate migration name_of_migration_file
```

Then specify the changes the newly created migration file, afterwards, run:

```console
rails db:migrate
```

All available routes in Rails can be viewed by running:

```console
rails routes --expanded
```

Run the console with:

```console
rails c
```

Run the server with:

```console
rails s
```

Run the test suite with:

```console
rails test
```

Update a boolean attribute on an instance with toggle:

```console
user.toggle!(:admin)
```

Enable table views in the console (in the console)

```console
Hirb.enable
```

## Credentials

The encrypted credentials for the application are saved in config/credentials.yml.enc. To view/edit these credentials run:

```console
EDITOR="code --wait" rails credentials:edit
```

To access credentials in the code (e.g. AWS's Access Key), use:

```console
Rails.application.credentials.aws[:access_key_id]
```

## Generators

New Model + DB migration file (e.g. User with attributes name and height)

```console
rails generate model User name:string height:decimal
```

Prefill DB with mock data programatically (update db/migrate/seeds.rb file first):

```console
rails db:seed
```

New Controller (e.g. messages)

```console
rails generate controller messages <action>
```

Controller test file:

```console
rails generate test_unit:scaffold name_of_model
```

Undo a Controller generation:

```console
rails destroy controller messages
```

New Channel (e.g. chatroom)

```console
rails generate channel chatroom
```

New Resource (e.g. many-to-many relationship between 2 models)

```console
rails g resource UserStock user:references stock:references
```

&nbsp;

## Production

Ensure that a production DB is in place. Add this to your Gemfile:

```console
group :production do
  gem 'pg'
end
```

Handles various platforms in production, run this command to update your Gemfile.lock:

```console
bundle lock --add-platform x86_64-linux
```

Ensure that you're logged into Heroku. The CLI will link you to a page to use your authenticator app on:

```console
heroku login
```

To create a new production version of your app hosted in Heroku, use:

```console
heroku create
```

To rename your application in Heroku, run:

```console
heroku rename <new_name_of_application>
```

Ensure that the main branch is up-to-date in Github and that all gems are installed, then update the main branch in Heroku:

```console
git push heroku <main/master>
```

Then run any pending migrations in Heroku

```console
heroku run rails db:migrate
```

Upload your master.key to Heroku (secrets)

```console
heroku config:set RAILS_MASTER_KEY=<your_master.key_value>
```

Afterwards, Production should be updated and is ready to view

```console
heroku open
```
