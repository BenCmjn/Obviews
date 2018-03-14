require 'rails_helper'

RSpec.describe Board, type: :model do
  it "Board is a table (a class)" do
    expect(Board).to be_a(Class)
  end

  it "Cannot create a board instance and save it without belonging to a user" do
    board1 = Board.new()
    board1.save
    expect(board1.errors.full_messages).not_to eq([])
  end

  it "Creates a board instance and saves it if it belongs to a user" do
    user1 = User.new(firstname:"Baudouin", lastname:"Baudrier", email:"a@a.a", password:"coucou", password_confirmation:"coucou")
    user1.save
    board1 = Board.new(user_id: user1.id)
    board1.save
    expect(board1.errors.full_messages).to eq([])
    expect(user1.board).not_to eq([])
  end
end
