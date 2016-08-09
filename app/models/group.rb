class Group < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates_numericality_of :no_of_entrees, less_than_or_equal_to: :no_of_attendees

  def outstanding_attendees
    self.no_of_attendees.to_i - self.no_of_entrees.to_i
  end
end
