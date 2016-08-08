class Event < ApplicationRecord
  belongs_to :user
  has_many :groups

  def attendees
    self.groups.reduce(0) do |sum, group|
      sum + group.no_of_attendees
    end
  end

  def remaining
    self.allocation - self.attendees
  end
end
