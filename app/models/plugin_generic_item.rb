class PluginGenericItem < ActiveRecord::Base
  acts_as_opal_plugin

  belongs_to :plugin
  belongs_to :item

  def to_s
    "this is the generic data"
  end

end
