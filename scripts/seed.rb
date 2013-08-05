require './config/env'
require './lib/models'

[ Actor, Team, Project, Event ].map(&:destroy)

devs = Team.new name: "Devs"
devs.save

joe = Actor.new
joe.name = "Joe Q"
joe.email = "joe@example.com"

joe.team = devs

joe.save

website = Project.new team: devs, name: "website"
website.save

Event.create name: "Deploy", revision: "4dlkjf", actor: joe, project: website
Event.create name: "Deploy", revision: "oi34u8ed", actor: joe, project: website
Event.create name: "Rollback", revision: "4dlkjf", actor: joe, project: website

