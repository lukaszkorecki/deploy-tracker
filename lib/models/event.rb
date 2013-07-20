class Event
  include ::DataMapper::Resource
  property :id, Serial
  property :project_id, Integer
  property :actor_id, Integer
  property :name, String # event name (deployed, rollback etc)
  property :revision, String
  property :app_name, String
  property :metadata, String
  property :created_at, DateTime

  belongs_to :project
  has n, :events
end
