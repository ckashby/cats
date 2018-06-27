class BugsController < ApplicationController
  def index
  	@bugs = Bug.all #.order(:name)
  end

  def new
  	@bug = Bug.new
  end

  def create
    @bug = Bug.new(bug_params)
    if @bug.save
    	redirect_to root_path
    else
    	render :new
    end
  end

  def show
  	@bug = Bug.find(params[:id])
  end

  def edit
  	@bug = Bug.find(params[:id])
  end

  def update
  	@bug = Bug.find(params[:id])
  	if @bug.update(bug_params)
  		redirect_to bugs_path
  	else
  		render :edit
  	end
  end

  def destroy
  	@bug = Bug.find(params[:id])
  	@bug.destroy
  	redirect_to bugs_path
  end

  private

    def bug_params
    	params.require(:bug).permit(:name)
    end
end
