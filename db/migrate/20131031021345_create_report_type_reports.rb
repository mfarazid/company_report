class CreateReportTypeReports < ActiveRecord::Migration
  def change
    create_table :report_type_reports do |t|
      t.integer :report_id
      t.integer :report_type_id

      t.timestamps
    end
  end
end
