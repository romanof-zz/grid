class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :authentication_id
      t.string :link
      t.timestamps null: false
    end
  end
end
