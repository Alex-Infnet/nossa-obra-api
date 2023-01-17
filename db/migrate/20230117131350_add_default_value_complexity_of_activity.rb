class AddDefaultValueComplexityOfActivity < ActiveRecord::Migration[7.0]
  def change
    change_column_default :activities, :complexity, from: nil, to: 1
  end
end
