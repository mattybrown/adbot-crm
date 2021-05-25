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
    @client = Client.create(client_params)

    if @client.save
      flash.notice = "Client saved"
      redirect_to clients_path
    else
      flash.now[:error] = "Something went wrong: #{@client.errors.full_messages}"
      render_action :new
    end
  end

  def edit

  end

  def delete

  end

end

private
  def client_params
    params.require(:client).permit(:name, :address, :phone, :website, :organisation_id, :user_id)
  end
