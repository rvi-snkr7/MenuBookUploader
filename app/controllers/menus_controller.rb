class MenusController < ApplicationController
  def index
    @menu=Menu.all
  end
  def import
    Menu.import(params[:file])
    # @menus=Menu.new
    redirect_to root_url, notice: "Menu Imported"
  end

end
