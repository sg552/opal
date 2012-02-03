class RegisterPluginsOfGenericItemsAndSpecificItems < ActiveRecord::Migration
  def up
    Plugin.create(:name => "GenericItem", :order_number => 3,
      :is_enabled => true, :is_builtin => true)
    Plugin.create(:name => "SpecificItem", :order_number => 4,
      :is_enabled => true, :is_builtin => true)
  end

  def down
    Plugin.destroy_all("name = 'GenericItem' or name = 'SpecificItem'")
  end
end
