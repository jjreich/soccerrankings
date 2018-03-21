require 'test_helper'

class ClubTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @club_type = club_types(:one)
  end

  test "should get index" do
    get club_types_url
    assert_response :success
  end

  test "should get new" do
    get new_club_type_url
    assert_response :success
  end

  test "should create club_type" do
    assert_difference('ClubType.count') do
      post club_types_url, params: { club_type: { name: @club_type.name, score: @club_type.score } }
    end

    assert_redirected_to club_type_url(ClubType.last)
  end

  test "should show club_type" do
    get club_type_url(@club_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_club_type_url(@club_type)
    assert_response :success
  end

  test "should update club_type" do
    patch club_type_url(@club_type), params: { club_type: { name: @club_type.name, score: @club_type.score } }
    assert_redirected_to club_type_url(@club_type)
  end

  test "should destroy club_type" do
    assert_difference('ClubType.count', -1) do
      delete club_type_url(@club_type)
    end

    assert_redirected_to club_types_url
  end
end
