class VotesController < ApplicationController
  
  def create
    Vote.create(user_id: 1, pitch_id: params[:pitch_id], user_id: current_user.id )
    redirect_to pitch_path(params[:pitch_id])
  end
  
end
