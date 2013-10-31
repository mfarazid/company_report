class ReportTypeReportsController < ApplicationController
  # GET /report_type_reports
  # GET /report_type_reports.json
  def index
    @report_type_reports = ReportTypeReport.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @report_type_reports }
    end
  end

  # GET /report_type_reports/1
  # GET /report_type_reports/1.json
  def show
    @report_type_report = ReportTypeReport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @report_type_report }
    end
  end

  # GET /report_type_reports/new
  # GET /report_type_reports/new.json
  def new
    @report_type_report = ReportTypeReport.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @report_type_report }
    end
  end

  # GET /report_type_reports/1/edit
  def edit
    @report_type_report = ReportTypeReport.find(params[:id])
  end

  # POST /report_type_reports
  # POST /report_type_reports.json
  def create
    @report_type_report = ReportTypeReport.new(params[:report_type_report])

    respond_to do |format|
      if @report_type_report.save
        format.html { redirect_to @report_type_report, notice: 'Report type report was successfully created.' }
        format.json { render json: @report_type_report, status: :created, location: @report_type_report }
      else
        format.html { render action: "new" }
        format.json { render json: @report_type_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /report_type_reports/1
  # PUT /report_type_reports/1.json
  def update
    @report_type_report = ReportTypeReport.find(params[:id])

    respond_to do |format|
      if @report_type_report.update_attributes(params[:report_type_report])
        format.html { redirect_to @report_type_report, notice: 'Report type report was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @report_type_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /report_type_reports/1
  # DELETE /report_type_reports/1.json
  def destroy
    @report_type_report = ReportTypeReport.find(params[:id])
    @report_type_report.destroy

    respond_to do |format|
      format.html { redirect_to report_type_reports_url }
      format.json { head :no_content }
    end
  end
end
