class RandomizersController < ApplicationController
    def reset
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
      redirect_to root_path
    end
end
