class CreateUsuarios < ActiveRecord::Migration[7.0]
  def change
    create_table :usuarios do |t|
      t.string :name, null: false
      t.string :surname, null: false
      t.string :email, null: false
      t.integer :telephone
      t.string :description
      t.string :office
      t.string :gender
      t.timestamps
    end
  end
end
