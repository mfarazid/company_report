class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :title
      t.date :inc_date
      t.text :description

      t.timestamps
    end
  end
end
