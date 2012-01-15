require 'spec_helper'

describe Page do
  it "must have order_number as sequence" do
    for page in Page.all
      page.order_number.should_not be_nil
    end
  end
end
