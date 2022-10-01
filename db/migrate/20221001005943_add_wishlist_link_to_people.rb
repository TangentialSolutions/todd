class AddWishlistLinkToPeople < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :wishlist_link, :string
  end
end
