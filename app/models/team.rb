# frozen_string_literal: true

class Team < ApplicationRecord
  has_many :players

  validates :teamid, :name, :venue, :city, :division, :divisionid, :confrence,
            :confrenceid, :year, presence: true
  validates :teamid, :divisionid, :confrenceid, :year,
            numericality: { only_integer: true }
  validates :teamid, uniqueness: true
end
