require 'sinatra/base'
# add auth?
class DeployTracker < Sinatra::Base
  get "/" do
    # main html and such
  end


  get "/events" do
    # list events
  end

  get "/event/:id" do
    # single event
  end

  post "/events" do
    # create a new one
  end
end
