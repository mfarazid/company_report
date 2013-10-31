class ReportType < ActiveRecord::Base
  attr_accessible :name
  has_many :report_type_reports
  has_many :reports, :through => :report_type_reports  
end
