class BoardController < ApplicationController
  before_action :authenticate_user!
  before_action :confirmation, :get_candidate_ids
  
  def get_ids
  end

  def index
  end

  def show
  end

  def get_candidate_ids
    @candidate_ids = File.read("tmp_current_candidates_ids.txt").split(",")
    @candidate_1 = @candidate_ids[0]
    @candidate_1 = @candidate_ids[1]
  end

  def next
    archivedboard = ArchivedBoard.create(user_id: current_user.id)
    archivedboard.users=@candidate_ids
    #archivedboard.lock = @lock
    archivedboard.is_match = false
    archivedboard.save
    redirect_to randomizers_reset
    # redirect_to board_show_path
  end

  def confirmation
    #@intro = params[:intro] #this is the text you enter in the field thats a justification of the match
  end

  def match
    matchboard = Match.create(user_id: current_user.id)
    matchboard.users=@candidate_ids
    matchboard.lock = @lock
    #matchboard.intro = @intro
    matchboard.save

    archivedboard = ArchivedBoard.create(user_id: current_user.id)
    archivedboard.users=@candidate_ids
    archivedboard.lock = @lock
    archivedboard.is_match = true
    #archivedboard.intro = @intro
    archivedboard.save
    redirect_to randomizers_reset
  end  

  def share
  end

  private
  def body_params
    params.require(:board).permit(:content)
  end
end
