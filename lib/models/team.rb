class Team
  include ::DataMapper::Resource

  property :id, Serial
  property :name, String

  has n, :actors
  has n, :projects
end
