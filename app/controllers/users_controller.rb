class UsersController < ApplicationController
  def show
  end

  def fb_share
    current_user.karma += 10
    current_user.save
  end

  def carousel
  end

  def ranking
    @bestusers = User.all.order(:karma).reverse
  end
end
