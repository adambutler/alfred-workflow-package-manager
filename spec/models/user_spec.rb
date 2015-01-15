require "rails_helper"

RSpec.describe User, :type => :model do
  it "has an email" do
    user = FactoryGirl.create(:user)
    expect(user.email).to be_kind_of(String)
  end
end
