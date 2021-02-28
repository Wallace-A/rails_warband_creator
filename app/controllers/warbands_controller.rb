class WarbandsController < ApplicationController
  before_action :set_warband, only: [:show, :edit, :update, :destroy]
  def index
    @warbands = Warband.all
  end

  def show
    #gets warband from set_warband
  end

  def new
    @warband = Warband.new
  end

  def create
    @warband = Warband.new(warband_params)
    if @warband.save
      #got to show page for warband
      redirect_to @warband, notice:"warband successfully made"
    else
      # go back to new form
      render :new
    end
  end

  def destroy
    @warband.destroy
    redirect_to warbands_path
  end

  def edit

  end

  def update
    
    if @warband.update(warband_params)
      #got to show page for warband
      redirect_to warband_path(@warband)
    else
      # go back to new form
      render :new
    end
  end
  private 

  def set_warband 
    @warband = Warband.find(params[:id])
  end

  def warband_params
    params.require(:warband).permit(:name, :faction, :photo)
  end
end
