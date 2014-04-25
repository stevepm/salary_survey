require 'spec_helper'

describe User do
  it "creates a user with a token hash" do
    user = User.new
    user.save
    user.generate_token!
    expect(user.token.present?).to eq(true)
  end
end
