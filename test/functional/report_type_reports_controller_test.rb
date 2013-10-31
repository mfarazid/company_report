require 'test_helper'

class ReportTypeReportsControllerTest < ActionController::TestCase
  setup do
    @report_type_report = report_type_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:report_type_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create report_type_report" do
    assert_difference('ReportTypeReport.count') do
      post :create, report_type_report: { report_id: @report_type_report.report_id, report_type_id: @report_type_report.report_type_id }
    end

    assert_redirected_to report_type_report_path(assigns(:report_type_report))
  end

  test "should show report_type_report" do
    get :show, id: @report_type_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @report_type_report
    assert_response :success
  end

  test "should update report_type_report" do
    put :update, id: @report_type_report, report_type_report: { report_id: @report_type_report.report_id, report_type_id: @report_type_report.report_type_id }
    assert_redirected_to report_type_report_path(assigns(:report_type_report))
  end

  test "should destroy report_type_report" do
    assert_difference('ReportTypeReport.count', -1) do
      delete :destroy, id: @report_type_report
    end

    assert_redirected_to report_type_reports_path
  end
end
