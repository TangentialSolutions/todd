class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.references :people
      t.index [:first_name, :last_name], unique: true
      t.timestamps
    end
  end
end
