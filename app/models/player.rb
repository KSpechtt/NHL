# frozen_string_literal: true

class Player < ApplicationRecord
  belongs_to :team

  validates :teamid, :jerseynumber, :positiontype, :positionname, :fullname,
            :playerid, presence: true
  validates :teamid, :jerseynumber, :playerid,
            numericality: { only_integer: true }
  validates :teamid, :playerid, uniqueness: true
end
