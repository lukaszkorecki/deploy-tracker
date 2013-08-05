require 'sinatra/base'
# add auth?
class DeployTracker < Sinatra::Base
  get "/" do
    # main html and such
  end

  get "/:project_id/events" do
    # list events
  end

  get "/event/:id" do
    # single event
  end

  post "/:project_id/events" do |project_id|
    payload = JSON.parse request['rack.input'].read
    actor = Actor.find(api_key: params["api_key"]).first
    project = Project.find(id: project_id, team_id: actor.team_id).first

    if actor and project
      new_event = Event.create(
        actor_id: actor.id,
        project_id: project.id,
        name: payload["name"],
        revision: payload["revision"],
        metadata: payload["metadata"]
      )

      EventPresenter.new(new_event).to_json
    else
      Error.new("nope!").respond_with 404
    end
  end

end
