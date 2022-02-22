class CreateSocialNetworks < ActiveRecord::Migration[7.0]
  def change
    create_table :socialnetworks do |t|
      t.string :linkedin
      t.references :usuario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
