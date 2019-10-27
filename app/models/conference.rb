# frozen_string_literal: true

class Conference < ApplicationRecord
  has_many :teams

  validates :conference_name, :conference_id, presence: true
end
