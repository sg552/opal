require 'spec_helper'
describe PluginSpecificItem do
  it "should load the fixtures" do
    PluginSpecificItem.all.size.should > 0
  end
end
