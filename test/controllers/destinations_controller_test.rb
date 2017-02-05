require 'test_helper'

class DestinationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @destination = destinations(:one)
  end

  test "should get index" do
    get destinations_url
    assert_response :success
  end

  test "should get new" do
    get new_destination_url
    assert_response :success
  end

  test "should create destination" do
    assert_difference('Destination.count') do
      post destinations_url, params: { destination: { around: @destination.around, drink: @destination.drink, eat: @destination.eat, festivals: @destination.festivals, place: @destination.place, shop: @destination.shop, sights: @destination.sights, sleep: @destination.sleep, to_do: @destination.to_do, why_go: @destination.why_go } }
    end

    assert_redirected_to destination_url(Destination.last)
  end

  test "should show destination" do
    get destination_url(@destination)
    assert_response :success
  end

  test "should get edit" do
    get edit_destination_url(@destination)
    assert_response :success
  end

  test "should update destination" do
    patch destination_url(@destination), params: { destination: { around: @destination.around, drink: @destination.drink, eat: @destination.eat, festivals: @destination.festivals, place: @destination.place, shop: @destination.shop, sights: @destination.sights, sleep: @destination.sleep, to_do: @destination.to_do, why_go: @destination.why_go } }
    assert_redirected_to destination_url(@destination)
  end

  test "should destroy destination" do
    assert_difference('Destination.count', -1) do
      delete destination_url(@destination)
    end

    assert_redirected_to destinations_url
  end
end
