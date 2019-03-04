class Api::TicketsController < ApplicationController
  include BasicParams
  skip_before_action :verify_authenticity_token

  def create
    ticket = record_class.new(ticket_params)
    if ticket.save
      ticket.create_excavator!(excavator_params)
      render json: { success: true }, status: :ok
    else
      render json: { success: false, message: ticket.errors.messages }, status: :unprocessable_entity
    end
  end

  private

  def record_class
    Ticket
  end
end
