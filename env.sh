#!/bin/bash

echo "start preparing ${1} db env"

echo `RAILS_ENV=${1} rake db:drop`
echo `RAILS_ENV=${1} rake db:create`
echo `RAILS_ENV=${1} rake db:migrate`
echo `RAILS_ENV=${1} rake db:seed`
echo `RAILS_ENV=${1} rails r db/progressbar.rb`

echo "finish preparing ${1} db env"

# #!/bin/bash
# 
# # development test production
# #rails_env='development'
# #if [ "$1" != ""]; then
# rails_env=$1
# #fi
# 
# echo "start preparing ${rails_env} db env"
# tmp="RAILS_ENV=${rails_env}"
# tmp2="${tmp} bundle exec rake db:drop"
# `$tmp2`
# # echo `${tmp} bundle exec rake db:create`
# # echo `${tmp} bundle exec rake db:migrate`
# # echo `${tmp} bundle exec rake db:seed`
# # echo `${tmp} bundle exec rails runner db/progressbar.rb`
# 
# echo "finish preparing ${rails_env} db env"