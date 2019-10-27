# frozen_string_literal: true

class Division < ApplicationRecord
  has_many :teams

  validates :conference_id, :name, presence: true
end
