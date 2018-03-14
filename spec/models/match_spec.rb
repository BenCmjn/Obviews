require 'rails_helper'

RSpec.describe Match, type: :model do
  it "Match is a table (a class)" do
    expect(Match).to be_a(Class)
  end

  it "Cannot create a match instance and save it without belonging to a user" do
    match1 = Match.new()
    match1.save
    expect(match1.errors.full_messages).not_to eq([])
  end

  it "Creates a match instance and saves it if it belongs to a user" do
    user1 = User.new(firstname:"Baudouin", lastname:"Baudrier", email:"a@a.a", password:"coucou", password_confirmation:"coucou")
    user1.save
    match1 = Match.new(user_id: user1.id)
    match1.save
    expect(match1.errors.full_messages).to eq([])
    expect(user1.matches).not_to eq([])
  end
end
