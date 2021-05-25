class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(contact_params)

    if @contact.save
      flash.notice = "Contact saved"
      redirect_to client_path(params[:client_id])
    else
      flash.now[:error] = "Something went wrong: #{@contact.errors.full_messages}"
      render :new
    end
  end

  def edit

  end

  def destroy
    @contact = Contact.find(params[:id])
    @client = @contact.client
    @contact.destroy

    redirect_to client_path(@client)
  end

  private
    def contact_params
      params.require(:contact).permit(:name, :client_id, :department, :phone, :mobile, :email)
    end

end
