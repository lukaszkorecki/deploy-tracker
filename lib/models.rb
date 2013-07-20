# Loads all models
require_relative './models/actor'
require_relative './models/event'
require_relative './models/project'

DataMapper.finalize
