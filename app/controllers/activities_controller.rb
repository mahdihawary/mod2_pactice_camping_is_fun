class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
  end
  def new
    
  end
  def show
    @activity = Activity.find(params[:id])
  end 
  
end
