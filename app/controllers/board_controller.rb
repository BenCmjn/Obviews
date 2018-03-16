class BoardController < ApplicationController
  before_action :authenticate_user!
  def get_ids

  	# return @fate
  end

  def index
    def randomizer
      ids = User.pluck(:id)       # User.pluck(:champ) va chercher toutes les instances de :champ dans la table User, puis le transforme en array
      ids.delete_if {|id| id == current_user.id } # Ne jamais être soi-même dans les propositions…
      @fate = ids.shuffle[0..1]   # On met ca dans une variable, puis on shuffle cette variable (on sort 2 valeurs au hasard de l'array)
      return @fate
    end # Return two random differents user ids, without the current_user one.
    @board = Board.find(current_user.id)
    @result = randomizer

    @candidate_1 = User.find(@result[0])
    @candidate_2 = User.find(@result[1])
  end

  def share
  end

  def confirmation
    @board = Board.find(current_user.id) #finds current board
    @user1 = User.find(@board.user_id) #finds
  end

  private
  def body_params
    params.require(:board).permit(:content)
  end
end
