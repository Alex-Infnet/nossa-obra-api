class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.date :start_date
      t.integer :status
      t.belongs_to :client, foreign_key: true, null: true 

      t.timestamps
    end
  end
end
