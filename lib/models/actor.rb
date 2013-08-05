class Actor
  include ::DataMapper::Resource
  property :id, Serial
  property :name, String
  property :api_key, String
  property :email, String
  property :created_at, DateTime

  belongs_to :team
  property :team_id, Integer

  before :create do |actor|
    actor.api_key = generate_api_key()
  end


  def generate_api_key
    ::SecureRandom.uuid.gsub(/\W/,'')
  end
end
