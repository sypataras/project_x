class TicketDecorator < ApplicationDecorator
  delegate_all

  def response_due_data
    object.response_due_data.strftime('%H:%M %a %d/%m/%Y')
  end

  def additional_sa_codes
    object.additional_sa_codes.join(', ')
  end
end
