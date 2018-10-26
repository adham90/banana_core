# frozen_string_literal: true

class Bike < ApplicationRecord
  enum status: {
    inactive:    0,
    available:   1,
    bussy:       2,
    broken:      3,
    low_battery: 4
  }

  validates :status, presence: true, inclusion: { in: statuses.keys }
end
