class RemoveMatchDateFromMatchSchedules < ActiveRecord::Migration
  def up
  	remove_column :match_schedules, :match_date
  end

  def down
  	add_column :match_schedules, :match_date, :datetime
  end
end
