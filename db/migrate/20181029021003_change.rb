class Change < ActiveRecord::Migration[5.2]
  def change
    change_column :events, :postal_code, :integer
  end
end
