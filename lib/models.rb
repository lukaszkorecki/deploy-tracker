# Loads all models and their dependencies
require 'securerandom'
require 'data_mapper'
require_relative './models/actor'
require_relative './models/event'
require_relative './models/project'
require_relative './models/team'

DataMapper.finalize
