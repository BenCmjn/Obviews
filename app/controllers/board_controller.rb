class BoardController < ApplicationController
  before_action :authenticate_user!
  before_action :randomizer
  
  def randomizer
      @lock = current_user.boards.first.lock
      @board = current_user.boards.first
      if @board.users.include?(current_user)
        current_user.reset = true
        randomizer
      end
      @candidate_1 = @board.users.first
      @candidate_2 = @board.users.last
      @c1id = @candidate_1.id
      @c2id = @candidate_2.id
    if current_user.reset == true
      case @lock
      when 0
        ids = User.pluck(:id)   # User.pluck(:champ) va chercher toutes les instances de :champ dans la table User, puis le transforme en array
        ids.delete_if {|id| id == current_user.id } # Ne jamais être soi-même dans les propositions…
        fate = ids.shuffle[0..1]   # On met ca dans une variable, puis on shuffle cette variable (on sort 2 valeurs au hasard de l'array)
        @board.users = [User.find(fate[0]), User.find(fate[1])]
        @board.save
      when 1
        ids = User.pluck(:id)   # User.pluck(:champ) va chercher toutes les instances de :champ dans la table User, puis le transforme en array
        ids.delete_if {|id| id == current_user.id } # Ne jamais être soi-même dans les propositions…
        fate = ids.shuffle[0..1]   # On met ca dans une variable, puis on shuffle cette variable (on sort 2 valeurs au hasard de l'array)
        fate[0] = @c1id
        @board.users = [User.find(fate[0]), User.find(fate[1])]
        @board.save
      when 2
        ids = User.pluck(:id)   # User.pluck(:champ) va chercher toutes les instances de :champ dans la table User, puis le transforme en array
        ids.delete_if {|id| id == current_user.id } # Ne jamais être soi-même dans les propositions…
        fate = ids.shuffle[0..1]   # On met ca dans une variable, puis on shuffle cette variable (on sort 2 valeurs au hasard de l'array)
        fate[1] = @c2id
        @board.users = [User.find(fate[0]), User.find(fate[1])]
        @board.save
      end
      @lock = current_user.boards.first.lock
      @board = current_user.boards.first
      if @board.users.include?(current_user)
        current_user.reset = true
        randomizer
      end
      @candidate_1 = @board.users.first
      @candidate_2 = @board.users.last
      @c1id = @candidate_1.id
      @c2id = @candidate_2.id
      end    
  end
 
  def get_candidate_ids
  end

  def next
    @board = current_user.boards.first
    archivedboard = ArchivedBoard.create(user_id: @board.user_id)
    archivedboard.users = @board.users
    archivedboard.lock = @board.lock
    archivedboard.is_match = false
    archivedboard.save
    u = current_user
    u.reset = true
    u.save
    randomizer
    redirect_to root_path
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
    u = current_user
    u.reset = true
    u.save
    randomizer
    redirect_to root_path
  end  
  
  def show
  end
  
  def confirmation
    u = current_user
    u.reset = false
    u.save
  end

  def share
  end

  def index
  end

  def get_ids
  end

  #private
  #def body_params
    #params.require(:board).permit(:content)
  #end
end
