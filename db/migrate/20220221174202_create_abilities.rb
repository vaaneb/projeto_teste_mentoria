class CreateAbilities < ActiveRecord::Migration[7.0]
  def change
    create_table :abilities do |t|
      t.string :name
      t.references :usuario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
