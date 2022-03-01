class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :rif
      t.integer :telephone
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
