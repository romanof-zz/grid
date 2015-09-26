class CreateAuthentications < ActiveRecord::Migration
  def change
    create_table :authentications do |t|
      t.string :neuron_id, null: false
      t.string :email
      t.string :password
      t.boolean :active
      t.timestamps null: false
    end
  end
end
