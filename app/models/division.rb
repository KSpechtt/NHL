# frozen_string_literal: true

class Division < ApplicationRecord
  has_many :teams

  validates :division_name, :division_id, presence: true
end
