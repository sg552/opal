require 'spec_helper'
describe "how to use FactoryGirl"do
  it "should create a record" do
    user = FactoryGirl.create(:user)
    user.id.should > 0
    admin = FactoryGirl.build(:admin)
    admin.id.should == nil
  end

  it "should show what is Factory(:xx),
    now I know that Factory(:xx) is a shortcut for: FactoryGirl.create(:xx)" do
    user = Factory(:user)
    user.id.should > 0
  end

  it "should show how many settings there" do
    Setting.all.size.should > 0
  end

end
