class Project
  include ::DataMapper::Resource
  property :id, Serial
  property :name, String

  belongs_to :team
  property :team_id, Integer

  has n, :events
end
