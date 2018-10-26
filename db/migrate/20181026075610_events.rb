class Events < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :venue
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :photo_url
      t.string :ticket_url
      t.text :description
      t.datetime :starttime
      t.datetime :endtime
      t.references :user
    end
  end
end
