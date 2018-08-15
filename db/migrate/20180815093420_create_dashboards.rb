class CreateDashboards < ActiveRecord::Migration
  def change
    create_table :dashboards do |t|
      t.integer :static
      t.date :date

      t.timestamps null: false
    end
  end
end
