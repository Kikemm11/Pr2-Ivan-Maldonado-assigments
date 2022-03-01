class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.boolean :legal_entity
      t.string :doc_number
      t.string :telephone
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
