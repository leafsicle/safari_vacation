require "application_system_test_case"

class SeenAnimalsTest < ApplicationSystemTestCase
  setup do
    @seen_animal = seen_animals(:one)
  end

  test "visiting the index" do
    visit seen_animals_url
    assert_selector "h1", text: "Seen Animals"
  end

  test "creating a Seen animal" do
    visit seen_animals_url
    click_on "New Seen Animal"

    fill_in "Count Of Times Seen", with: @seen_animal.count_of_times_seen
    fill_in "Id", with: @seen_animal.id
    fill_in "Location Of Last Seen", with: @seen_animal.location_of_last_seen
    fill_in "Species", with: @seen_animal.species
    click_on "Create Seen animal"

    assert_text "Seen animal was successfully created"
    click_on "Back"
  end

  test "updating a Seen animal" do
    visit seen_animals_url
    click_on "Edit", match: :first

    fill_in "Count Of Times Seen", with: @seen_animal.count_of_times_seen
    fill_in "Id", with: @seen_animal.id
    fill_in "Location Of Last Seen", with: @seen_animal.location_of_last_seen
    fill_in "Species", with: @seen_animal.species
    click_on "Update Seen animal"

    assert_text "Seen animal was successfully updated"
    click_on "Back"
  end

  test "destroying a Seen animal" do
    visit seen_animals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Seen animal was successfully destroyed"
  end
end
