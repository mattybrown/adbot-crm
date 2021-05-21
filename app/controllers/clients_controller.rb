class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end

  def show
    @client = Client.find(params[:id])
    @contacts = Contact.where(client_id: @client.id)
    @ads = @client.ads
  end

  def new
    @client = Client.new
  end

  def create

  end

  def edit

  end

  def delete

  end
  
end
