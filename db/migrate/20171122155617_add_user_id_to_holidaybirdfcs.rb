class AddUserIdToHolidaybirdfcs < ActiveRecord::Migration[5.1]
  def change
    add_column :holidaybirdfcs, :user_id, :integer
  end
end
