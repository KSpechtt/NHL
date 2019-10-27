# frozen_string_literal: true

class Conference < ApplicationRecord
  has_many :teams

  validates :conference_id, :name, presence: true
end
