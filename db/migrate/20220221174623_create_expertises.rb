class CreateExpertises < ActiveRecord::Migration[7.0]
  def change
    create_table :expertises do |t|
      t.string :expertise
      t.references :usuario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
