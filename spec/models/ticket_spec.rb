require 'rails_helper'

RSpec.describe Ticket, type: :model do
  subject { described_class.new }

  it 'invalid ticket' do
    expect(subject).not_to be_valid
  end

  it 'invalid ticket' do
    subject.request_number = '12'
    expect(subject).to be_valid
  end
end
