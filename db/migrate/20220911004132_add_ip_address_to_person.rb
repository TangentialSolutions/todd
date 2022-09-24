class AddIpAddressToPerson < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :ip_address, :string
  end
end
