# frozen_string_literal: true

class Player < ApplicationRecord
  belongs_to :team

  validates :nhlteamid, :jerseynumber, :positiontype, :positionname, :fullname,
            :nhlplayerid, presence: true
  validates :nhlteamid, :jerseynumber, :nhlplayerid,
            numericality: { only_integer: true }
  validates :nhlteamid, :nhlplayerid, uniqueness: true
end
