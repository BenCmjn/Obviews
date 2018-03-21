class BoardController < ApplicationController
  before_action :authenticate_user!

  def random
    tempboard = Board.where(user_id: current_user.id)
    board = Board.find(tempboard.ids).last
    candidate_1 = board.users.first
    candidate_2 = board.users.last
    lock = board.lock
    case lock
    when 0
      ids = User.pluck(:id)
      ids.delete_if {|id| id == current_user.id }
      fate = ids.shuffle[0..1]
      board.user_ids = [fate[0], fate[1]]
      board.save
    when 1
      ids = User.pluck(:id)
      ids.delete_if {|id| id == current_user.id }
      fate = ids.shuffle[0..1]
      fate[0] = candidate_1.id
      board.user_ids = [fate[0], fate[1]]
      board.save
    when 2
      ids = User.pluck(:id)
      ids.delete_if {|id| id == current_user.id }
      fate = ids.shuffle[0..1]
      fate[1] = candidate_2.id
      board.user_ids = [fate[0], fate[1]]
      board.save
    end
    current_user.randomize = false
    current_user.save
  end
 
  def show
    if current_user.randomize == true
      self.random
    end
    tempboard = Board.where(user_id: current_user.id)
    board = Board.find(tempboard.ids).last
    @candidate_1 = board.users.first
    @candidate_2 = board.users.last
  end
 
##################################################################
 
  def next
    current_user.randomize = true
    current_user.save
    self.random
    redirect_to root_path
  end
 
  def confirmation
    tempboard = Board.where(user_id: current_user.id)
    board = Board.find(tempboard.ids).last
    @candidate_1 = board.users.first
    @candidate_2 = board.users.last
  end
 
  def match
    current_user.randomize = true
    current_user.save
  end  
 
##################################################################
 
  def share
  end
 
  def index
  end
 
  def get_ids
  end
end
