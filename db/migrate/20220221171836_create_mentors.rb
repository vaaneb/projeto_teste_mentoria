class CreateMentors < ActiveRecord::Migration[7.0]
  def change
    create_table :mentors do |t|
      t.string :name, null: false
      t.string :surname, null: false
      t.string :email, null: false
      t.integer :telephone
      t.string :office
      
      t.references :usuario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
