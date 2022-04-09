class CreateLetters < ActiveRecord::Migration[7.0]
  def change
    create_table :letters do |t|
      t.string :file_path, null: false
      t.string :text, null: false
      t.timestamps
    end
  end
end
