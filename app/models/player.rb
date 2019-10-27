# frozen_string_literal: true

class Player < ApplicationRecord
  belongs_to :team
  #has_one :team

  validates :team_id,
            #:nhlteam_id,
            :jersey_number, :position_type, :position_name,
            :full_name, :nhlplayer_id, presence: true
  validates :team_id,
            # :nhlteam_id,
            :jersey_number, :nhlplayer_id,
            numericality: { only_integer: true }
  validates :nhlplayer_id, uniqueness: true
end
