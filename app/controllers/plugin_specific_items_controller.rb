class PluginSpecificItemsController < ApplicationController
  before_filter :only => [ :edit, :update, :destroy]
  def new
    @specific_item = PluginSpecificItem.new(:record_type => "Item",
      :record_id => params[:record_id])
    #@specific_item.record_type = "Item"
    #@specific_item.record_id = params[:record_id]
  end
  def create
    @specific_item = PluginSpecificItem.new(params[:plugin_specific_item])
    @specific_item.save!
    redirect_to "/items/view/#{Item.find(@specific_item.record_id).to_param}"
  end
  def edit
  end
  def update
    redirect_to "items/view/#{Item.find(@specific_item.record_id).to_param}"
  end
  def destroy
    @specific_item.delete!
  end
  private
  def get_by_id
    @specific_item = PluginSpecificItem.find(params[:id])
  end
end
