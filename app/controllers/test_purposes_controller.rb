class TestPurposesController < ApplicationController

  # GET
  def get_banana
    puts "hihihi"
    @fruit = "banana"
    render :text => "hi, #{@fruit}"
  end
end
