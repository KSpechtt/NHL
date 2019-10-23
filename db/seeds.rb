# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be parseed with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'
require 'net/http'

Player.destroy_all
Team.destroy_all

def parse(url)
  JSON.parse(open(url).read)
end

njd = parse('https://statsapi.web.nhl.com/api/v1/teams/1?expand=team.roster')
nyi = parse('https://statsapi.web.nhl.com/api/v1/teams/2?expand=team.roster')
nyr = parse('https://statsapi.web.nhl.com/api/v1/teams/3?expand=team.roster')
philly = parse('https://statsapi.web.nhl.com/api/v1/teams/4?expand=team.roster')
pens = parse('https://statsapi.web.nhl.com/api/v1/teams/5?expand=team.roster')
bruins = parse('https://statsapi.web.nhl.com/api/v1/teams/6?expand=team.roster')
sabres = parse('https://statsapi.web.nhl.com/api/v1/teams/7?expand=team.roster')
habs = parse('https://statsapi.web.nhl.com/api/v1/teams/8?expand=team.roster')
sens = parse('https://statsapi.web.nhl.com/api/v1/teams/9?expand=team.roster')
leafs = parse('https://statsapi.web.nhl.com/api/v1/teams/10?expand=team.roster')
canes = parse('https://statsapi.web.nhl.com/api/v1/teams/12?expand=team.roster')
flor = parse('https://statsapi.web.nhl.com/api/v1/teams/13?expand=team.roster')
tb = parse('https://statsapi.web.nhl.com/api/v1/teams/14?expand=team.roster')
caps = parse('https://statsapi.web.nhl.com/api/v1/teams/15?expand=team.roster')
hawks = parse('https://statsapi.web.nhl.com/api/v1/teams/16?expand=team.roster')
wings = parse('https://statsapi.web.nhl.com/api/v1/teams/17?expand=team.roster')
preds = parse('https://statsapi.web.nhl.com/api/v1/teams/18?expand=team.roster')
blues = parse('https://statsapi.web.nhl.com/api/v1/teams/19?expand=team.roster')
flames = parse('https://statsapi.web.nhl.com/api/v1/teams/20?expand=team.roster')
avs = parse('https://statsapi.web.nhl.com/api/v1/teams/21?expand=team.roster')
oilers = parse('https://statsapi.web.nhl.com/api/v1/teams/22?expand=team.roster')
van = parse('https://statsapi.web.nhl.com/api/v1/teams/23?expand=team.roster')
ducks = parse('https://statsapi.web.nhl.com/api/v1/teams/24?expand=team.roster')
stars = parse('https://statsapi.web.nhl.com/api/v1/teams/25?expand=team.roster')
kings = parse('https://statsapi.web.nhl.com/api/v1/teams/26?expand=team.roster')
sharks = parse('https://statsapi.web.nhl.com/api/v1/teams/28?expand=team.roster')
cbj = parse('https://statsapi.web.nhl.com/api/v1/teams/29?expand=team.roster')
wild = parse('https://statsapi.web.nhl.com/api/v1/teams/30?expand=team.roster')
vegas = parse('https://statsapi.web.nhl.com/api/v1/teams/54?expand=team.roster')
yotes = parse('https://statsapi.web.nhl.com/api/v1/teams/53?expand=team.roster')
jets = parse('https://statsapi.web.nhl.com/api/v1/teams/52?expand=team.roster')

# njd = JSON.parse('https://statsapi.web.nhl.com/api/v1/teams/1?expand=team.roster')
# nyi = JSON.parse('https://statsapi.web.nhl.com/api/v1/teams/2?expand=team.roster')
# nyr = JSON.parse('https://statsapi.web.nhl.com/api/v1/teams/3?expand=team.roster')
# philly = JSON.parse('https://statsapi.web.nhl.com/api/v1/teams/4?expand=team.roster')
# pens = JSON.parse('https://statsapi.web.nhl.com/api/v1/teams/5?expand=team.roster')
# bruins = JSON.parse('https://statsapi.web.nhl.com/api/v1/teams/6?expand=team.roster')
# sabres = JSON.parse('https://statsapi.web.nhl.com/api/v1/teams/7?expand=team.roster')
# habs = JSON.parse('https://statsapi.web.nhl.com/api/v1/teams/8?expand=team.roster')
# sens = JSON.parse('https://statsapi.web.nhl.com/api/v1/teams/9?expand=team.roster')
# leafs = JSON.parse('https://statsapi.web.nhl.com/api/v1/teams/10?expand=team.roster')
# canes = JSON.parse('https://statsapi.web.nhl.com/api/v1/teams/12?expand=team.roster')
# flor = JSON.parse('https://statsapi.web.nhl.com/api/v1/teams/13?expand=team.roster')
# tb = JSON.parse('https://statsapi.web.nhl.com/api/v1/teams/14?expand=team.roster')
# caps = JSON.parse('https://statsapi.web.nhl.com/api/v1/teams/15?expand=team.roster')
# hawks = JSON.parse('https://statsapi.web.nhl.com/api/v1/teams/16?expand=team.roster')
# wings = JSON.parse('https://statsapi.web.nhl.com/api/v1/teams/17?expand=team.roster')
# preds = JSON.parse('https://statsapi.web.nhl.com/api/v1/teams/18?expand=team.roster')
# blues = JSON.parse('https://statsapi.web.nhl.com/api/v1/teams/19?expand=team.roster')
# flames = JSON.parse('https://statsapi.web.nhl.com/api/v1/teams/20?expand=team.roster')
# avs = JSON.parse('https://statsapi.web.nhl.com/api/v1/teams/21?expand=team.roster')
# oilers = JSON.parse('https://statsapi.web.nhl.com/api/v1/teams/22?expand=team.roster')
# van = JSON.parse('https://statsapi.web.nhl.com/api/v1/teams/23?expand=team.roster')
# ducks = JSON.parse('https://statsapi.web.nhl.com/api/v1/teams/24?expand=team.roster')
# stars = JSON.parse('https://statsapi.web.nhl.com/api/v1/teams/25?expand=team.roster')
# kings = JSON.parse('https://statsapi.web.nhl.com/api/v1/teams/26?expand=team.roster')
# sharks = JSON.parse('https://statsapi.web.nhl.com/api/v1/teams/28?expand=team.roster')
# cbj = JSON.parse('https://statsapi.web.nhl.com/api/v1/teams/29?expand=team.roster')
# wild = JSON.parse('https://statsapi.web.nhl.com/api/v1/teams/30?expand=team.roster')
# vegas = JSON.parse('https://statsapi.web.nhl.com/api/v1/teams/54?expand=team.roster')
# yotes = JSON.parse('https://statsapi.web.nhl.com/api/v1/teams/53?expand=team.roster')
# jets = JSON.parse('https://statsapi.web.nhl.com/api/v1/teams/52?expand=team.roster')

teams = [jets, yotes, vegas, wild, cbj, sharks, kings, stars, ducks, van,
         oilers, avs, flames, blues, preds, wings, hawks, caps, tb, flor,
         canes, leafs, sens, habs, sabres, bruins, pens, philly, nyi, nyr, njd]

teamid = 0

teams.each do |team|
  team['teams'].each do |value|
    Team.create(
      nhlteam_id: value['id'],
      name: value['name'],
      venue: value['venue']['name'],
      city: value['venue']['city'],
      division: value['division']['name'],
      division_id: value['division']['id'],
      conference: value['conference']['name'],
      conference_id: value['conference']['id'],
      year: value['firstYearOfPlay']
    )
    teamid = value['id']

    value['roster']['roster'].each do |player|
      Player.create(
        nhlplayer_id: player['person']['id'],
        nhlteam_id: teamid,
        jersey_number: player['jerseyNumber'],
        position_type: player['position']['type'],
        position_name: player['position']['name'],
        full_name: player['person']['fullName']
      )
    end
  end
end

# teams.each do |team|
#   team['teams'][0]['roster']['roster'].each do |player|
#     Player.create(
#       nhlplayer_id: player['person']['id'],
#       nhlteam_id: teamid,
#       jersey_number: player['jerseyNumber'],
#       position_type: player['position']['type'],
#       position_name: player['position']['name'],
#       full_name: player['person']['fullName']
#     )
#     # puts player['person']['fullName']
#   end
# end

puts "Generated #{Player.count} players."
puts "Generated #{Team.count} teams."
