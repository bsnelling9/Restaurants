require "application_system_test_case"

class ResturantsTest < ApplicationSystemTestCase
  setup do
    @resturant = resturants(:one)
  end

  test "visiting the index" do
    visit resturants_url
    assert_selector "h1", text: "Resturants"
  end

  test "should create resturant" do
    visit resturants_url
    click_on "New resturant"

    fill_in "Description", with: @resturant.description
    fill_in "Genre", with: @resturant.genre
    fill_in "Glutenfree", with: @resturant.glutenfree
    fill_in "Location", with: @resturant.location
    fill_in "Name", with: @resturant.name
    fill_in "Vegan", with: @resturant.vegan
    click_on "Create Resturant"

    assert_text "Resturant was successfully created"
    click_on "Back"
  end

  test "should update Resturant" do
    visit resturant_url(@resturant)
    click_on "Edit this resturant", match: :first

    fill_in "Description", with: @resturant.description
    fill_in "Genre", with: @resturant.genre
    fill_in "Glutenfree", with: @resturant.glutenfree
    fill_in "Location", with: @resturant.location
    fill_in "Name", with: @resturant.name
    fill_in "Vegan", with: @resturant.vegan
    click_on "Update Resturant"

    assert_text "Resturant was successfully updated"
    click_on "Back"
  end

  test "should destroy Resturant" do
    visit resturant_url(@resturant)
    click_on "Destroy this resturant", match: :first

    assert_text "Resturant was successfully destroyed"
  end
end
