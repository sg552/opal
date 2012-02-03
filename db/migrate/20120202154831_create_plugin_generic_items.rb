class CreatePluginGenericItems < ActiveRecord::Migration
  def up
    create_table :plugin_generic_items do |t|
      t.string :uuid
      t.string :child_age_scope
      t.string :scores
      t.text :tip
      t.string :record_type
      t.integer :record_id
      t.timestamp
    end
  end

  def down
    drop_table :plugin_generic_items
  end
end
