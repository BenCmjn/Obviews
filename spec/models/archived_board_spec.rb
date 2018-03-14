require 'rails_helper'

RSpec.describe ArchivedBoard, type: :model do
  it "archived_boards is a table (a class)" do
    expect(ArchivedBoard).to be_a(Class)
  end

  it "Cannot create a archived_boards instance and save it without belonging to a user" do
    user1 = User.new(firstname:"Baudouin", lastname:"Baudrier", email:"a@a.a", password:"coucou", password_confirmation:"coucou")
    user1.save
    archivedboard1 = ArchivedBoard.new
    archivedboard1.save
    expect(archivedboard1.errors.full_messages).not_to eq([])
  end

  it "Creates a archived_boards instance and saves it if it belongs to a user" do
    user1 = User.new(firstname:"Baudouin", lastname:"Baudrier", email:"a@a.a", password:"coucou", password_confirmation:"coucou")
    user1.save
    archivedboard1 = ArchivedBoard.new(user_id: user1.id)
    archivedboard1.save
    expect(archivedboard1.errors.full_messages).to eq([])
    expect(user1.archived_boards).not_to eq([])
  end
end
