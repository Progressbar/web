#!/bin/bash

echo 'start preparing test db env'

echo `RAILS_ENV=test rake db:drop`
echo `RAILS_ENV=test rake db:create`
echo `RAILS_ENV=test rake db:migrate`
echo `RAILS_ENV=test rake db:seed`
echo `RAILS_ENV=test rails r db/progressbar.rb`

echo 'finish preparing test db env'