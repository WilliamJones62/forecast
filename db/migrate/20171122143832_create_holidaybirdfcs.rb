class CreateHolidaybirdfcs < ActiveRecord::Migration[5.1]
  def change
    create_table :holidaybirdfcs do |t|
      t.string :channel
      t.string :sku
      t.string :description
      t.string :cc
      t.integer :forecast
      t.integer :harvest
      t.string :period
      t.integer :uom

      t.timestamps
    end
  end
end
