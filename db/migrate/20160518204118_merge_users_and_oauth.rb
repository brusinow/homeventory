class MergeUsersAndOauth < ActiveRecord::Migration
  def change
    add_column :users, :provider_id, :string
    add_column :users, :provider_hash, :string
  end
end
