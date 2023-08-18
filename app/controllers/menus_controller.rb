class MenusController < ApplicationController

    def index 
        @menus = Menu.all 
    end 

    def show 
        @menu = Menu.find_by(id: params[:id])
    end 

end