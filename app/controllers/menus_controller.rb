class MenusController < ApplicationController
  def index
  end
  def import
    Menu.import(params[:file])
    redirect_to root_url, notice: "Menu Imported"
  end
end
