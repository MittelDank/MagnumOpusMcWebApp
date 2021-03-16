class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :ign
      t.string :session_id
      t.string :skin

      t.timestamps
    end
  end
end
