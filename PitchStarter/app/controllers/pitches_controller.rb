class PitchesController < ApplicationController
  def index
    @pitches = Pitch.all
  end

  def show
    @pitch = Pitch.find(params[:id])
  end

  def new
    @pitch = Pitch.new
  end

  def create

  end

  def destroy
  end

  def edit
  end

  def update
  end

  private

  def pitch_params
    params.require(:pitch).permit([:title, :url])
  end

end
