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

workflow = Workflow.create!({
  title: "html2haml",
  git_repository_url: "git@github.com:adambutler/Alfred-Workflow-html2haml.git",
  description: "Convert HTML to HAML right in your clipboard"
})
