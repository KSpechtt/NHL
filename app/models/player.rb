# frozen_string_literal: true

class Player < ApplicationRecord
  belongs_to :team

  validates :nhlteam_id, :jersey_number, :position_type, :position_name, :full_name,
            :nhlplayer_id, presence: true
  validates :nhlteam_id, :jersey_number, :nhlplayer_id,
            numericality: { only_integer: true }
  validates :nhlteam_id, :nhlplayer_id, uniqueness: true
end
