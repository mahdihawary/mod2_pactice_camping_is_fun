class CampersController < ApplicationController
  def index
    @campers = Camper.all
  end

  def new
    @camper = Camper.new
  end

  def create
    @camper = Camper.create(camper_params)
    
    if @camper.valid?
      redirect_to camper_path(@camper)
    else
      redirect_to new_camper_path(@camper)
    end
    
  end

  def show
    @camper = Camper.find(params[:id])
  end

  def camper_params
    params.require(:camper).permit(:age, :name)
    
  end
end
