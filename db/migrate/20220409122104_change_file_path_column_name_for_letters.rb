class ChangeFilePathColumnNameForLetters < ActiveRecord::Migration[7.0]
  def change
    rename_column :letters, :file_path, :filename
  end
end
