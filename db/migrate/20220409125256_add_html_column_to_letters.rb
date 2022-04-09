class AddHtmlColumnToLetters < ActiveRecord::Migration[7.0]
  def change
    add_column :letters, :html, :string
  end
end
