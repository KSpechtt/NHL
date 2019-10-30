# frozen_string_literal: true

class Search < ApplicationRecord
  def search_players
    players = Player.all

    players = players.where(['full_name LIKE ?', "%#{keywords}%"]) if keywords.present?
    players = players.where(['position_name LIKE ?', category]) if category.present?
    # players = players.team.conference.where(['conference_name LIKE ?', conference]) if conference.present?
    # players = players.joins(:team).joins(:conference).where(conferences: { conference_name: conference }) if conference.present?
    players = players.where(['jersey_number LIKE ?', number]) if number.present?
    players = players.joins(:team).where(teams: { name: team }) if team.present?

    players
  end
end
