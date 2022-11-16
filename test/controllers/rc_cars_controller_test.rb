require "test_helper"

class RcCarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rc_car = rc_cars(:one)
  end

  test "should get index" do
    get rc_cars_url
    assert_response :success
  end

  test "should get new" do
    get new_rc_car_url
    assert_response :success
  end

  test "should create rc_car" do
    assert_difference("RcCar.count") do
      post rc_cars_url, params: { rc_car: { category: @rc_car.category, description: @rc_car.description, make: @rc_car.make, model: @rc_car.model, name: @rc_car.name } }
    end

    assert_redirected_to rc_car_url(RcCar.last)
  end

  test "should show rc_car" do
    get rc_car_url(@rc_car)
    assert_response :success
  end

  test "should get edit" do
    get edit_rc_car_url(@rc_car)
    assert_response :success
  end

  test "should update rc_car" do
    patch rc_car_url(@rc_car), params: { rc_car: { category: @rc_car.category, description: @rc_car.description, make: @rc_car.make, model: @rc_car.model, name: @rc_car.name } }
    assert_redirected_to rc_car_url(@rc_car)
  end

  test "should destroy rc_car" do
    assert_difference("RcCar.count", -1) do
      delete rc_car_url(@rc_car)
    end

    assert_redirected_to rc_cars_url
  end
end
