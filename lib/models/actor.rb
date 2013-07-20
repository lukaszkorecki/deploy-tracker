class Actor
  include ::DataMapper::Resource
  property :id, Serial
  property :name, String
  property :email, String
  property :created_at, DateTime
end
