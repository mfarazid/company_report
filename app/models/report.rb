class Report < ActiveRecord::Base
  attr_accessible :description, :inc_date, :title, :report_type_ids
  has_many :report_type_reports
  has_many :report_types, :through => :report_type_reports
end
