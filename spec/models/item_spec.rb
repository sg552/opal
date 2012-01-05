require 'spec_helper'
describe Item do 
  it "should have fixtures loaded in DB" do 
    Item.all.size.should > 0
  end
end
