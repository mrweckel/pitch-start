class PitchesController < ApplicationController
  def index
    @pitches = Pitch.all.order(created_at: :desc).limit(3)
  end

  def show
    @pitch = Pitch.find(params[:id])
    @votes = @pitch.votes.count
  end

  def new
    @pitch = Pitch.new
  end

  def create
    @pitch = Pitch.new(pitch_params, user_id: current_user.id)
    if @pitch.save
      redirect_to pitch_path(@pitch)
    else
      render :new
    end
  end

  def destroy
    @pitch = Pitch.find(params[:id]).destroy
    redirect_to root_url
  end

  def edit
    @pitch = Pitch.find(params[:id])
  end

  def update
    @pitch = Pitch.find(params[:id])
    @pitch.update(pitch_params)

    redirect_to pitches_path
  end

  private

  def pitch_params
    params.require(:pitch).permit([:title, :url])
  end

end
