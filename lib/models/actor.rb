class Actor
  include ::DataMapper::Resource
  property :id, Serial
  property :name, String
  property :api_key, String
  property :email, String
  property :created_at, DateTime

  belongs_to :team
  property :team_id, Integer
end
