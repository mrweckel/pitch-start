class VotesController < ApplicationController
  def create
    Vote.create(user_id: 1, pitch_id: params[:pitch_id] )
    redirect_to pitch_path(params[:pitch_id])
  end
end
