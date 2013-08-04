class Project
  include ::DataMapper::Resource
  property :id, Serial
  property :name, String
  property :team_id, Integer

  belongs_to :team
  has n, :events
end
