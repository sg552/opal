require 'spec_helper'
describe User do 
  it "should have fixtures loaded" do 
    User.all.size.should > 0
  end
end
