require 'spec_helper' 
describe BrowseController do 
  it "should get banana" do 
    puts "-==== starts!" 
    get :get_banana
    puts "assigns: #{assigns.class}, assigns.size: #{assigns.size}"
    assigns.to_hash.inspect
    puts "listing variables: "
    instance_variables.inspect
    puts response.body
    response.should be_success
    assigns[:fruit].should == "banana"
  end
end
