class AddApprovedToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :approved, :boolean
  end
end
