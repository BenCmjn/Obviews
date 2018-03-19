class RandomizersController < ApplicationController
    def reset
      ids = User.pluck(:id)   # User.pluck(:champ) va chercher toutes les instances de :champ dans la table User, puis le transforme en array
      ids.delete_if {|id| id == current_user.id } # Ne jamais être soi-même dans les propositions…
      fate = ids.shuffle[0..1]   # On met ca dans une variable, puis on shuffle cette variable (on sort 2 valeurs au hasard de l'array)
      File.open('tmp_current_candidates_ids.txt', 'w') { |file| file.write(fate) }
      redirect_to root_path
    end # Return two random differents user ids, without the current_user one.	
end
