class CreateExecutors < ActiveRecord::Migration[7.0]
  def change
    create_table :executors do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
