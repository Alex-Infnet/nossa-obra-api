class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :description
      t.belongs_to :project, null: true, foreign_key: true
      t.belongs_to :category, null: true, foreign_key: true
      t.date :start_date
      t.integer :duration
      t.float :cost
      t.float :bdi
      t.float :complexity
      t.belongs_to :executor, null: true, foreign_key: true
      
      t.timestamps
    end
  end
end