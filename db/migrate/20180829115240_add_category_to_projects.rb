class AddCategoryToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :project_category_id, :integer
  end
end
