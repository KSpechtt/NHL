# frozen_string_literal: true

class Team < ApplicationRecord
  has_many :players
  # has_one :conference
  # has_one :division

  validates :nhlteam_id, :name, :venue, :city, :division, :division_id,
            :conference, :conference_id, :year, presence: true
  validates :nhlteam_id, :division_id, :conference_id, :year,
            numericality: { only_integer: true }
  validates :nhlteam_id, uniqueness: true
end
