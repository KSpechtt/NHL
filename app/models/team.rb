# frozen_string_literal: true

class Team < ApplicationRecord
  has_many :players

  validates :nhlteamid, :name, :venue, :city, :division, :divisionid,
            :conference, :conferenceid, :year, presence: true
  validates :nhlteamid, :divisionid, :conferenceid, :year,
            numericality: { only_integer: true }
  validates :nhlteamid, uniqueness: true
end
