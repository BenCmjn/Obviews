class BoardController < ApplicationController
  before_action :authenticate_user!
  before_action :confirmation, :get_candidate_ids
  
  def get_ids
  end

  def index
  end

  def show
    if current_user.first_time == true
      cu = current_user
      cu.first_time = false
      cu.save
      redirect_to randomizers_reset_path
    end
  end

  def get_candidate_ids
    @candidate_1 = User.find(File.read("tmp_current_candidates_ids.txt").split(',')[0][1..-1])
    @candidate_2 = User.find(File.read("tmp_current_candidates_ids.txt").split(',')[1][1..-2])
    @candidate_ids = [@candidate_1, @candidate_2]
  end

  def next
    archivedboard = ArchivedBoard.create(user_id: current_user.id)
    archivedboard.users=@candidate_ids
    #archivedboard.lock = @lock
    archivedboard.is_match = false
    archivedboard.save
    redirect_to randomizers_reset_path
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
    redirect_to randomizers_reset_path
  end  

  def share
  end

  private
  def body_params
    params.require(:board).permit(:content)
  end
end
