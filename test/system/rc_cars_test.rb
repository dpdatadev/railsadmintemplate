require "application_system_test_case"

class RcCarsTest < ApplicationSystemTestCase
  setup do
    @rc_car = rc_cars(:one)
  end

  test "visiting the index" do
    visit rc_cars_url
    assert_selector "h1", text: "Rc cars"
  end

  test "should create rc car" do
    visit rc_cars_url
    click_on "New rc car"

    fill_in "Category", with: @rc_car.category
    fill_in "Description", with: @rc_car.description
    fill_in "Make", with: @rc_car.make
    fill_in "Model", with: @rc_car.model
    fill_in "Name", with: @rc_car.name
    click_on "Create Rc car"

    assert_text "Rc car was successfully created"
    click_on "Back"
  end

  test "should update Rc car" do
    visit rc_car_url(@rc_car)
    click_on "Edit this rc car", match: :first

    fill_in "Category", with: @rc_car.category
    fill_in "Description", with: @rc_car.description
    fill_in "Make", with: @rc_car.make
    fill_in "Model", with: @rc_car.model
    fill_in "Name", with: @rc_car.name
    click_on "Update Rc car"

    assert_text "Rc car was successfully updated"
    click_on "Back"
  end

  test "should destroy Rc car" do
    visit rc_car_url(@rc_car)
    click_on "Destroy this rc car", match: :first

    assert_text "Rc car was successfully destroyed"
  end
end
