require 'spec_helper'

describe User, '#todos' do
  it "returns todos who's owner email is the email instantiated with" do
    Todo.create(description: 'Buy some eggs.', owner_email: 'person@example.com')
    Todo.create(description: 'Buy some milk.', owner_email: 'other_person@example.com')
    user = User.new('person@example.com')
    expect(user.todos.length).to eq 1
    expect(user.todos.first.description).to eq 'Buy some eggs.'

  end

  it "returns the email the user was instantiated with" do
    user = User.new('person@example.com')
    expect(user.email).to eq 'person@example.com'
  end
end