class BoardController < ApplicationController
  before_action :authenticate_user!
  before_action :reset, :randomizer
  
  def get_ids
  end
  
  def randomizer
      ids = User.pluck(:id) # User.pluck(:champ) va chercher toutes les instances de :champ dans la table User, puis le transforme en array
      ids.delete_if {|id| id == current_user.id } # Ne jamais être soi-même dans les propositions…
      @fate = ids.shuffle[0..1]   # On met ca dans une variable, puis on shuffle cette variable (on sort 2 valeurs au hasard de l'array)
      return @fate
  end

  def index
  end

  def reset
    @lock = 0 # TO DELETE WHEN NEEDED!!!!
    result = randomizer
    swapper = result
    @board = Board.find(current_user.board_ids.first)

    @candidate_1 = User.find(swapper[0])
    @candidate_2 = User.find(swapper[1])
  end

  def show
  end

  def next
    archivedboard = ArchivedBoard.create(user_id: current_user.id)
    archivedboard.users=[@candidate_1, @candidate_2]
    #archivedboard.lock = @lock
    archivedboard.is_match = false
    archivedboard.save
    @should_i_reset = true
    redirect_to board_show_path
  end

  def confirmation
     #@intro = params[:intro] #this is the text you enter in the field thats a justification of the match
  end

  def match
    matchboard = Match.create(user_id: current_user.id)
    matchboard.users=[@candidate_1, @candidate_2]
    matchboard.lock = @lock
    #matchboard.intro = @intro
    matchboard.save

    archivedboard = ArchivedBoard.create(user_id: current_user.id)
    archivedboard.users=[@candidate_1, @candidate_2]
    archivedboard.lock = @lock
    archivedboard.is_match = true
    #archivedboard.intro = @intro
    archivedboard.save
    @should_i_reset = true
    redirect_to board_show_path
  end  

  def share
  end

  private
  def body_params
    params.require(:board).permit(:content)
  end
end
