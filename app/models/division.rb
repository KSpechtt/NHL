# frozen_string_literal: true

class Division < ApplicationRecord
  has_many :teams

  validates :division_id, :name, presence: true
end
