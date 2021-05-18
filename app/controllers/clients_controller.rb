class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end

  def show
    @client = Client.find(params[:id])
    @contacts = Contact.where(client_id: @client.id)
    @ads = @client.ads
  end
end
