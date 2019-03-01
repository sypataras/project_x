class Ticket < ApplicationRecord
  has_one :excavator

  validates_uniqueness_of :request_number
end
