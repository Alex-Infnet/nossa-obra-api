class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :document
      t.string :email
      t.text :description
      t.text :address

      t.timestamps
    end
  end
end
