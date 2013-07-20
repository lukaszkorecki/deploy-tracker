require './config/env'
require './lib/models'
require 'dm-migrations'

DataMapper.auto_migrate!
