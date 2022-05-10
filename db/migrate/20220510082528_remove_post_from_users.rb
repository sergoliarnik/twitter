class RemovePostFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_reference :users, :post, null: false, foreign_key: true
  end
end
