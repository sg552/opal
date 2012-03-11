# this data presents the data scratched from other sites...
class PluginSpecificItem < ActiveRecord::Base
  #acts_as_opal_plugin

  belongs_to :plugin
  belongs_to :user
  belongs_to :vendor

end
