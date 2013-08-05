class Event
  include ::DataMapper::Resource
  property :id, Serial
  property :name, String # event name (deployed, rollback etc)
  property :revision, String
  property :metadata, String
  property :created_at, DateTime

  belongs_to :project
  property :project_id, Integer

  belongs_to :actor
  property :actor_id, Integer
end
