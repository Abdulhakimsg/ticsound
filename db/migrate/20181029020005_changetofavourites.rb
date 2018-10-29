class Changetofavourites < ActiveRecord::Migration[5.2]
  def change
    rename_table :events_users, :favourites
  end
end
