class AddSlugToMatchSchedules < ActiveRecord::Migration
  def change
    add_column :match_schedules, :slug, :string
  end
end
