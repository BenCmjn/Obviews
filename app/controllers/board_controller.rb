class BoardController < ApplicationController
  before_action :authenticate_user!
  before_action :randomizer, :get_candidate_ids
  
  def randomizer
    board = current_user.boards.first
    c1id = board.users.first.id
    c2id = board.users.last.id
    lock = current_user.boards.first.lock

    case lock
    when 0
      ids = User.pluck(:id)   # User.pluck(:champ) va chercher toutes les instances de :champ dans la table User, puis le transforme en array
      ids.delete_if {|id| id == current_user.id } # Ne jamais être soi-même dans les propositions…
      fate = ids.shuffle[0..1]   # On met ca dans une variable, puis on shuffle cette variable (on sort 2 valeurs au hasard de l'array)
      board.users = [User.find(fate[0]), User.find(fate[1])]
      board.save
    when 1
      ids = User.pluck(:id)   # User.pluck(:champ) va chercher toutes les instances de :champ dans la table User, puis le transforme en array
      ids.delete_if {|id| id == current_user.id } # Ne jamais être soi-même dans les propositions…
      fate = ids.shuffle[0..1]   # On met ca dans une variable, puis on shuffle cette variable (on sort 2 valeurs au hasard de l'array)
      fate[0] = c1id
      board.users = [User.find(fate[0]), User.find(fate[1])]
      board.save
    when 2
      ids = User.pluck(:id)   # User.pluck(:champ) va chercher toutes les instances de :champ dans la table User, puis le transforme en array
      ids.delete_if {|id| id == current_user.id } # Ne jamais être soi-même dans les propositions…
      fate = ids.shuffle[0..1]   # On met ca dans une variable, puis on shuffle cette variable (on sort 2 valeurs au hasard de l'array)
      fate[1] = c2id
      board.users = [User.find(fate[0]), User.find(fate[1])]
      board.save
    end # Return two random differents user ids, without the current_user one.        
  end
 
  def get_candidate_ids
    if current_user.first_time == true
      cu = current_user
      cu.first_time = false
      cu.save
      randomizer
    end
    @board = current_user.boards.first
    if @board.users.include?(current_user)
      randomizer
    end
  end

  def next
    archivedboard = ArchivedBoard.create(user_id: @board.user_id)
    archivedboard.users = @board.users
    archivedboard.lock = @board.lock
    archivedboard.is_match = false
    archivedboard.save
    randomizer
  end

  def match
    matchboard = Match.create(user_id: @board.user_id)
    matchboard.users= @board.users
    matchboard.lock = @board.lock
    #matchboard.intro = params[:intro]
    matchboard.save

    archivedboard = ArchivedBoard.create(user_id: current_user.id)
    archivedboard.users = @board.users
    archivedboard.lock = @board.lock
    archivedboard.is_match = true
    #archivedboard.intro = params[:intro]
    archivedboard.save
    randomizer
  end  
  
  def confirmation
  end

  def share
  end

  def index
  end

  def show
  end

  def get_ids
  end

  #private
  #def body_params
    #params.require(:board).permit(:content)
  #end
end
