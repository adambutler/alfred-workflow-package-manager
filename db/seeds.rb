# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create!({
  email: "user@example.com",
  password: "itsasecret"
})

Workflow.create!([
  {
    title: "html2haml",
    git_repository_url: "git@github.com:adambutler/Alfred-Workflow-html2haml.git",
    description: "Convert HTML to HAML right in your clipboard",
    user: user
  },
  {
    title: "js2coffee",
    git_repository_url: "git@github.com:asimpson/js2coffee-alfred-workflow.git",
    description: "Converts copied JS to CoffeeScript and puts it on your clipboard",
    user: user
  },
  {
    title: "IMDB Search Suggest for Alfred",
    git_repository_url: "git@github.com:mattvh/Alfred_IMDB_Suggest.git",
    description: "Alfred workflow to add suggestions to IMDB searches",
    user: user
  },
  {
    title: "Dig",
    git_repository_url: "git@github.com:phallstrom/AlfredDig.git",
    description: "A workflow for Alfred to perform DNS lookups using dig and optionally copy a specific result to the clipboard.",
    user: user
  },
  {
    title: "YouTube",
    git_repository_url: "git@github.com:simonbs/alfred-youtube-workflow.git",
    description: "Search for YouTube videos and have them returned to Alfred.",
    user: user
  }
])
