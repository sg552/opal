class AddBuildinValueForNameColumnOfSystemPages< ActiveRecord::Migration
  def up
    Page.find(1).update_attribute("name", Page::NAME_BANNER_TOP)
    Page.find(2).update_attribute("name", Page::NAME_BANNER_BOTTOM)
    Page.find(3).update_attribute("name", Page::NAME_NEW_ITEM)
    Page.find(4).update_attribute("name", Page::NAME_EMAIL_FOOTER)
    Page.find(5).update_attribute("name", Page::NAME_HOMEPAGE_SIDEBAR)
    Page.find(6).update_attribute("name", Page::NAME_WEBSITE_TOP)
    Page.find(7).update_attribute("name", Page::NAME_WEBSITE_BOTTOM)
    Page.find(8).update_attribute("name", Page::NAME_CATEGORY_COLUMN)
  end

  def down
    for page in Page.where("id <= 8 ")
      page.update_attribute("name", "")
    end
  end
end
