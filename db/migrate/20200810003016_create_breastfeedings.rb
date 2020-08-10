class CreateBreastfeedings < ActiveRecord::Migration[5.2]
  def change
    create_table :breastfeedings do |t|
      t.float :duration
      t.float :quantity
      t.datetime :date

      t.timestamps
    end
  end
end
