class BoardController < ApplicationController
  before_action :authenticate_user!
  before_filter :set_admin
  def get_ids

  	# return @fate
  end

  def index
    
  end

  def show
    def randomizer
      ids = User.pluck(:id)       # User.pluck(:champ) va chercher toutes les instances de :champ dans la table User, puis le transforme en array
      ids.delete_if {|id| id == current_user.id } # Ne jamais être soi-même dans les propositions…
      @fate = ids.shuffle[0..1]   # On met ca dans une variable, puis on shuffle cette variable (on sort 2 valeurs au hasard de l'array)
      return @fate
    end # Return two random differents user ids, without the current_user one.
    @result = randomizer
    @board = Board.find(current_user.board_ids.first)

    @candidate_1 = User.find(@result[0])
    @candidate_2 = User.find(@result[1])

    def next
    end
  end

  def share
  end

  def confirmation
    @board = Board.find(current_user.board_ids.first)
    @user1 = current_user #finds
  end

  private
  def body_params
    params.require(:board).permit(:content)
  end
end
