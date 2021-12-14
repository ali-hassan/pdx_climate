class AddResourcesPageContentToCommunityCustomizations < ActiveRecord::Migration[5.2]
  def change
    add_column :community_customizations, :resources_page_content, :text
  end
end
