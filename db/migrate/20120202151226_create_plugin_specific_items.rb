class CreatePluginSpecificItems < ActiveRecord::Migration
  def up
    create_table :plugin_specific_items do |t|
      t.string :vendor_name
      t.string :price
      t.text :word_of_mouth
      t.string :delivery_method
      t.string :record_type
      t.integer :record_id
      t.timestamp
    end
  end

  def down
    drop_table :plugin_specific_items
  end
end
