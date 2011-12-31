class SetDefaultValueForCategoryIdOfCategories < ActiveRecord::Migration
  def up
    change_column_default :categories, :category_id, 0
    for category in Category.all
      if category.category_id.blank?
        category.category_id = 0
        category.save!
      end
    end
  end

  def down
    # you have to do this manually according to different DB.
    for category in Category.all
      if category.category_id == 0
        category.category_id = nil
        category.save!
      end
    end
  end
end
