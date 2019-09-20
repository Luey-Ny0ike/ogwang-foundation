class AddFreePassToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :free_pass, :boolean
  end
end
