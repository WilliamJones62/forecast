require 'test_helper'

class HolidaybirdfcsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @holidaybirdfc = holidaybirdfcs(:one)
  end

  test "should get index" do
    get holidaybirdfcs_url
    assert_response :success
  end

  test "should get new" do
    get new_holidaybirdfc_url
    assert_response :success
  end

  test "should create holidaybirdfc" do
    assert_difference('Holidaybirdfc.count') do
      post holidaybirdfcs_url, params: { holidaybirdfc: { cc: @holidaybirdfc.cc, channel: @holidaybirdfc.channel, description: @holidaybirdfc.description, forecast: @holidaybirdfc.forecast, harvest: @holidaybirdfc.harvest, period: @holidaybirdfc.period, sku: @holidaybirdfc.sku, uom: @holidaybirdfc.uom } }
    end

    assert_redirected_to holidaybirdfc_url(Holidaybirdfc.last)
  end

  test "should show holidaybirdfc" do
    get holidaybirdfc_url(@holidaybirdfc)
    assert_response :success
  end

  test "should get edit" do
    get edit_holidaybirdfc_url(@holidaybirdfc)
    assert_response :success
  end

  test "should update holidaybirdfc" do
    patch holidaybirdfc_url(@holidaybirdfc), params: { holidaybirdfc: { cc: @holidaybirdfc.cc, channel: @holidaybirdfc.channel, description: @holidaybirdfc.description, forecast: @holidaybirdfc.forecast, harvest: @holidaybirdfc.harvest, period: @holidaybirdfc.period, sku: @holidaybirdfc.sku, uom: @holidaybirdfc.uom } }
    assert_redirected_to holidaybirdfc_url(@holidaybirdfc)
  end

  test "should destroy holidaybirdfc" do
    assert_difference('Holidaybirdfc.count', -1) do
      delete holidaybirdfc_url(@holidaybirdfc)
    end

    assert_redirected_to holidaybirdfcs_url
  end
end
