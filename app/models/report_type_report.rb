class ReportTypeReport < ActiveRecord::Base
  attr_accessible :report_id, :report_type_id
  belongs_to :report
  belongs_to :report_type
end
