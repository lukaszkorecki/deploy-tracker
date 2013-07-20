require 'data_mapper'

# db setup
DataMapper.setup(:default, ENV['DATABASE_URL'] || 'postgres://localhost/deploytracker')
