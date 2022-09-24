class CreateCodes < ActiveRecord::Migration[7.0]
  def change
    create_table :codes do |t|
      t.belongs_to(:person, foreign_key: true)
      t.string :code
      t.index [:person_id, :code], unique: true
      t.timestamps
    end
  end
end
