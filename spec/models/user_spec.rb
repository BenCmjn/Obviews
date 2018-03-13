require 'rails_helper'

RSpec.describe User, type: :model do
  
  it "User is a class" do
    expect(User).to be_a(Class)
  end

  it "Creates a User instance and saves it" do
    user1 = User.create(email:"a@a.a", password:"coucou", password_confirmation:"coucou")
    expect(user1).to be_an_instance_of(User)
  end
end
