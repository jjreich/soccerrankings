require 'test_helper'

class PlayerGameSubdataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @player_game_subdatum = player_game_subdata(:one)
  end

  test "should get index" do
    get player_game_subdata_url
    assert_response :success
  end

  test "should get new" do
    get new_player_game_subdatum_url
    assert_response :success
  end

  test "should create player_game_subdatum" do
    assert_difference('PlayerGameSubdatum.count') do
      post player_game_subdata_url, params: { player_game_subdatum: { assists: @player_game_subdatum.assists, attemptedFirstTouches: @player_game_subdatum.attemptedFirstTouches, attemptedPasses: @player_game_subdatum.attemptedPasses, blocks: @player_game_subdatum.blocks, clearings: @player_game_subdatum.clearings, completedPasses: @player_game_subdatum.completedPasses, corners: @player_game_subdatum.corners, crosses: @player_game_subdatum.crosses, dispossessed: @player_game_subdatum.dispossessed, dribblePast: @player_game_subdatum.dribblePast, dribbles: @player_game_subdatum.dribbles, fiftyFiftiesWon: @player_game_subdatum.fiftyFiftiesWon, fouled: @player_game_subdatum.fouled, fouls: @player_game_subdatum.fouls, goals: @player_game_subdatum.goals, interceptions: @player_game_subdatum.interceptions, interventions: @player_game_subdatum.interventions, keyPasses: @player_game_subdatum.keyPasses, longBalls: @player_game_subdatum.longBalls, minutes: @player_game_subdatum.minutes, ownGoals: @player_game_subdatum.ownGoals, redCards: @player_game_subdatum.redCards, saves: @player_game_subdatum.saves, shots: @player_game_subdatum.shots, shotsOnTarget: @player_game_subdatum.shotsOnTarget, successfulFirstTouches: @player_game_subdatum.successfulFirstTouches, tackles: @player_game_subdatum.tackles, thruBalls: @player_game_subdatum.thruBalls, yellowCards: @player_game_subdatum.yellowCards } }
    end

    assert_redirected_to player_game_subdatum_url(PlayerGameSubdatum.last)
  end

  test "should show player_game_subdatum" do
    get player_game_subdatum_url(@player_game_subdatum)
    assert_response :success
  end

  test "should get edit" do
    get edit_player_game_subdatum_url(@player_game_subdatum)
    assert_response :success
  end

  test "should update player_game_subdatum" do
    patch player_game_subdatum_url(@player_game_subdatum), params: { player_game_subdatum: { assists: @player_game_subdatum.assists, attemptedFirstTouches: @player_game_subdatum.attemptedFirstTouches, attemptedPasses: @player_game_subdatum.attemptedPasses, blocks: @player_game_subdatum.blocks, clearings: @player_game_subdatum.clearings, completedPasses: @player_game_subdatum.completedPasses, corners: @player_game_subdatum.corners, crosses: @player_game_subdatum.crosses, dispossessed: @player_game_subdatum.dispossessed, dribblePast: @player_game_subdatum.dribblePast, dribbles: @player_game_subdatum.dribbles, fiftyFiftiesWon: @player_game_subdatum.fiftyFiftiesWon, fouled: @player_game_subdatum.fouled, fouls: @player_game_subdatum.fouls, goals: @player_game_subdatum.goals, interceptions: @player_game_subdatum.interceptions, interventions: @player_game_subdatum.interventions, keyPasses: @player_game_subdatum.keyPasses, longBalls: @player_game_subdatum.longBalls, minutes: @player_game_subdatum.minutes, ownGoals: @player_game_subdatum.ownGoals, redCards: @player_game_subdatum.redCards, saves: @player_game_subdatum.saves, shots: @player_game_subdatum.shots, shotsOnTarget: @player_game_subdatum.shotsOnTarget, successfulFirstTouches: @player_game_subdatum.successfulFirstTouches, tackles: @player_game_subdatum.tackles, thruBalls: @player_game_subdatum.thruBalls, yellowCards: @player_game_subdatum.yellowCards } }
    assert_redirected_to player_game_subdatum_url(@player_game_subdatum)
  end

  test "should destroy player_game_subdatum" do
    assert_difference('PlayerGameSubdatum.count', -1) do
      delete player_game_subdatum_url(@player_game_subdatum)
    end

    assert_redirected_to player_game_subdata_url
  end
end
