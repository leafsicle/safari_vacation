require 'test_helper'

class SeenAnimalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seen_animal = seen_animals(:one)
  end

  test "should get index" do
    get seen_animals_url
    assert_response :success
  end

  test "should get new" do
    get new_seen_animal_url
    assert_response :success
  end

  test "should create seen_animal" do
    assert_difference('SeenAnimal.count') do
      post seen_animals_url, params: { seen_animal: { count_of_times_seen: @seen_animal.count_of_times_seen, id: @seen_animal.id, location_of_last_seen: @seen_animal.location_of_last_seen, species: @seen_animal.species } }
    end

    assert_redirected_to seen_animal_url(SeenAnimal.last)
  end

  test "should show seen_animal" do
    get seen_animal_url(@seen_animal)
    assert_response :success
  end

  test "should get edit" do
    get edit_seen_animal_url(@seen_animal)
    assert_response :success
  end

  test "should update seen_animal" do
    patch seen_animal_url(@seen_animal), params: { seen_animal: { count_of_times_seen: @seen_animal.count_of_times_seen, id: @seen_animal.id, location_of_last_seen: @seen_animal.location_of_last_seen, species: @seen_animal.species } }
    assert_redirected_to seen_animal_url(@seen_animal)
  end

  test "should destroy seen_animal" do
    assert_difference('SeenAnimal.count', -1) do
      delete seen_animal_url(@seen_animal)
    end

    assert_redirected_to seen_animals_url
  end
end
