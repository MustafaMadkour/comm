# This migration comes from spree (originally 20200102141311)
class AddSocialToSpreeStores < ActiveRecord::Migration[5.2]
  def change
    add_column :spree_stores, :facebook, :string
    add_column :spree_stores, :twitter, :string
    add_column :spree_stores, :instagram, :string

    # Fix cache issue #10381
    Rails.cache.delete('default_store')
  end
end
