# frozen_string_literal: true

class Team < ApplicationRecord
  has_many :players
  belongs_to :conference
  belongs_to :division

  validates :team_id, :name, :venue, :city, :division_name,
            :conference_name,
            :year, presence: true
  validates :team_id,
            :year, numericality: { only_integer: true }
  validates :team_id, uniqueness: true
end
