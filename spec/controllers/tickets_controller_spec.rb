require 'rails_helper'

RSpec.describe TicketsController, :type => :controller do
  let(:ticket){ Ticket.create(request_number: '22') }

  describe 'GET index' do
    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end
  end

  describe 'GET show' do
    it 'returns success' do
      get :show, params: { id: ticket.id }
      expect(assigns(:ticket)).to eq(ticket)
    end

    it 'renders the show template' do
      get :show, params: { id: ticket.id }
      expect(response).to render_template('show')
    end
  end
end
