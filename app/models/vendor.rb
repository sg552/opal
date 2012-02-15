class Vendor < ActiveRecord::Base
  has_many :plugin_specific_items
end
