class MatchController < ApplicationController
  def index
    @matches = current_user.matches
  end

  def show
    @match = Match.find(params[:id])
  end
end
