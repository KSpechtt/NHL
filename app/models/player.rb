# frozen_string_literal: true

class Player < ApplicationRecord
  belongs_to :team
  # has_one :team

  validates :team_id,
            :jersey_number, :position_type, :position_name,
            :full_name, :player_id, presence: true
  validates :team_id,
            :jersey_number, :player_id,
            numericality: { only_integer: true }
  validates :player_id, uniqueness: true
end
