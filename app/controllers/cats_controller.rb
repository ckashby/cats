class CatsController < ApplicationController
	before_action :set_cat, only: [:show, :edit, :update, :destroy]


  def index
  	@cats = Cat.all.order("name asc")
  end

  def new
  	@cat = Cat.new
  end

  def create
  	@cat = Cat.new(cat_params)
  	if @cat.save
  		flash[:success] = "Successfully created a cat"
  		redirect_to root_url
  	else
  		render :edit
  	end
  end

  def show
  	
  end

  def edit
  	
  end

  def update
  	
    if @cat.update(cat_params)
    	redirect_to root_url
    else
    	render :edit
    end
  end

  def destroy
  	
  	@cat.destroy
  	flash[:success] = "Successfully deleted cat from db"
  	redirect_to root_url
  end

  private

    def set_cat
      @cat = Cat.find(params[:id])
    end

    def cat_params
      params.require(:cat).permit(:name, :gender)
    end
end
