class CreateSushis < ActiveRecord::Migration
  def change
    create_table :sushis do |t|

      t.timestamps null: false
    end
  end
end
