class OrganisationsController < ApplicationController
  protect_from_forgery with: :exception
  before_action :authenticate_user!


  def index
    @organisations = Organisation.all
  end

  def new

  end

  def create

  end
end
