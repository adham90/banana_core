class Ride < ApplicationRecord
  belongs_to :user
  belongs_to :bike

  before_save :default_values


  def time
    TimeDifference.between(started_at, ended_at).in_minutes.round
  end

  private

  def default_values

    self.started_at = Time.now
  end
end
