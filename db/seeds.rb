# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Added by Refinery CMS Pages extension
Refinery::Pages::Engine.load_seed

# Added by Refinery CMS Inquiries engine
Refinery::Inquiries::Engine.load_seed

# Added by Refinery CMS Blog engine
Refinery::Blog::Engine.load_seed

Refinery::Mailinglists::Engine.load_seed

Refinery::Registrations::Engine.load_seed

# Added by Refinery CMS Transactions extension
Refinery::Transactions::Engine.load_seed

# Added by Refinery CMS Fees extension
Refinery::Fees::Engine.load_seed

Refinery::DoorStatuses::Engine.load_seed
