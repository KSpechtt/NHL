# frozen_string_literal: true

class Team < ApplicationRecord
  has_many :players
  # belongs_to :conference
  # belongs_to :division

  # has_one :conference
  # has_one :division

  validates :team_id, :name, :venue, :city, :division,
            #:division_id,
            :conference,
            #:conference_id,
            :year, presence: true
  validates :team_id,
            #:division_id,
            #:conference_id,
            :year, numericality: { only_integer: true }
  validates :team_id, uniqueness: true
end
