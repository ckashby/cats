class BatsController < ApplicationController
	before_action :set_bat, only: [:show, :edit, :update, :destroy]

  def index
  	@bats = Bat.all.order(:name)
  end

  def new
  	@bat = Bat.new
  end

  def create
  	@bat = Bat.new(bat_params)
  	if @bat.save
      flash[:success] = "Bat successfully added"
  		redirect_to bats_path
  	else
  		render :new
  	end
  end

  def show  	
  end

  def edit  	
  end

  def update 	
  	if @bat.update(bat_params)
  		redirect_to root_url
  	else
  		render :edit
  	end
  end

  def destroy  	
  	@bat.destroy
    flash[:danger] = "Bat was successfully destroyed"
  	redirect_to root_url
  end

  private
    def bat_params
    	params.require(:bat).permit(:name)
    end

    def set_bat
    	@bat = Bat.find(params[:id])
    end
end
