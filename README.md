# Signin Demo

A web application with user signin built without any gems.

### Key files

- app > controllers > [users_controller.rb](../../blob/master/app/controllers/users_controller.rb)
- app > controllers > [sessions_controller.rb](../../blob/master/app/controllers/sessions_controller.rb)
- app > models > [user.rb](../../blob/master/app/models/user.rb)
- app > views > users > [new.html.erb](../../blob/master/app/views/users/new.html.erb)

### To launch app

Locally: fork and clone app. From terminal, in app's directory, run:

    bundle install
    rake db:create
    rake db:migrate
    rails s