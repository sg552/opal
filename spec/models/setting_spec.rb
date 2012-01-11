require 'spec_helper'
describe Setting do
  it "should exist records" do
    Setting.all.size.should > 0
  end
end
