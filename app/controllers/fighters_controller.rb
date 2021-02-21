class FightersController < ApplicationController

  before_action :set_warband, except: [:destroy]

  def new
    @fighter = Fighter.new
  end

  def create 
    @fighter = Fighter.new(fighter_params)
    @fighter.warband = @warband
    @fighter.value = 0;
    if @fighter.save
      redirect_to warband_path(@warband)
    else
      render :new
    end
  end

  def destroy
    @fighter = Fighter.find(params[:warband_id])
    @warband = @fighter.warband
    @fighter.destroy
    redirect_to warband_path(@warband)
  end
  private

  def set_warband 
    @warband = Warband.find(params[:warband_id])
  end

  def fighter_params
    params.require(:fighter).permit(:name, :role)
  end
end
