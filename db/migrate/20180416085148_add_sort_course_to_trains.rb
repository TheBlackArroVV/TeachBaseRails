class AddSortCourseToTrains < ActiveRecord::Migration[5.1]
  def change
    add_column :trains, :from_head, :boolean, default: true
  end
end
