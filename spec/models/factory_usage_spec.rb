require 'spec_helper'
describe "how to use FactoryGirl"do
  it "should create a record" do
    user = FactoryGirl.create(:user)
    puts "user.inspect: #{user.id}"
    admin = FactoryGirl.build(:admin)
    puts "admin.inspect: #{admin.id}"
  end

  it "should show what is Factory(:xx)" do
    user = Factory(:user)
    puts " after Factory(:user), #{user.id}"
  end

  it "should show how many settings there" do
    puts "Setting.all.size : #{Setting.all.size}"
    Setting.all.size.should > 0
  end

  it "should show what is FActory(:category)" do
    puts "Factory(:category): #{Factory(:category).inspect}"
  end
end
