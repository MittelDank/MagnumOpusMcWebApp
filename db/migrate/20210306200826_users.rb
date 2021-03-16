class Users < ActiveRecord::Migration[6.1]
  def change
    t.string :ign, index: true
    t.string :pin
  end
end
