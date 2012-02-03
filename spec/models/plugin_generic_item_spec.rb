require 'spec_helper'
describe PluginGenericItem do
  it "should load the fixtures" do
    PluginGenericItem.all.size.should > 0
  end
end
