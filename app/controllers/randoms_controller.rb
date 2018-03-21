class RandomsController < ApplicationController
  def RandomsController.rand
      cu = params[:current_user] 
      board = cu.boards.first
      candidate_1 = board.users.first
      candidate_2 = board.users.last
      lock = board.lock

      case lock
      when 0
        ids = User.pluck(:id)
        ids.delete_if {|id| id == cu.id }
        fate = ids.shuffle[0..1]
        board.users = [User.find(fate[0]), User.find(fate[1])]
        board.save
      when 1
        ids = User.pluck(:id)
        ids.delete_if {|id| id == cu.id }
        fate = ids.shuffle[0..1]
        fate[0] = candidate_1.id
        board.users = [User.find(fate[0]), User.find(fate[1])]
        board.save
      when 2
        ids = User.pluck(:id)
        ids.delete_if {|id| id == cu.id }
        fate = ids.shuffle[0..1]
        fate[1] = candidate_2.id
        board.users = [User.find(fate[0]), User.find(fate[1])]
        board.save
      end
    end
end
