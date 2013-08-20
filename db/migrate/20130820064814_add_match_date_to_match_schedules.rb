class AddMatchDateToMatchSchedules < ActiveRecord::Migration
  def change
    add_column :match_schedules, :match_date, :datetime
  end
end
