require 'spec_helper'
describe Category do 
  it "should have fixtures loaded" do 
    Category.all.size.should > 0
  end
end
