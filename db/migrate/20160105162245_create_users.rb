class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :mail, limit: 128

      t.timestamps null: false
    end
  end
end
