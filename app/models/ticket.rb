class Ticket < ApplicationRecord
  has_one :excavator

  # validates :request_number, :sequence_number, :digsite_info, presence: true
end
