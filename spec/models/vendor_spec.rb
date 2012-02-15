require 'spec_helper'
describe Vendor do
  it "should have many specific items" do
    Vendor.first.plugin_specific_items.size.should > 0
  end
end
