class CreateTest1s < ActiveRecord::Migration
  def change
    create_table :test1s do |t|
      t.binary :attribute_binary
      t.boolean :attribute_boolean
      t.date :attribute_date
      t.datetime :attribute_datetime
      t.decimal :attribute_decimal
      t.float :attribute_float
      t.integer :attribute_integer
      t.references :attribute_references, index: true, foreign_key: true
      t.string :attribute_string
      t.text :attribute_text
      t.time :attribute_time

      t.timestamps null: false
    end
  end
end
