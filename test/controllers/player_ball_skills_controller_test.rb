require 'test_helper'

class PlayerBallSkillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @player_ball_skill = player_ball_skills(:one)
  end

  test "should get index" do
    get player_ball_skills_url
    assert_response :success
  end

  test "should get new" do
    get new_player_ball_skill_url
    assert_response :success
  end

  test "should create player_ball_skill" do
    assert_difference('PlayerBallSkill.count') do
      post player_ball_skills_url, params: { player_ball_skill: { dribbline: @player_ball_skill.dribbline, heading: @player_ball_skill.heading, juggling: @player_ball_skill.juggling, longBalls: @player_ball_skill.longBalls, receiving: @player_ball_skill.receiving, shooting: @player_ball_skill.shooting } }
    end

    assert_redirected_to player_ball_skill_url(PlayerBallSkill.last)
  end

  test "should show player_ball_skill" do
    get player_ball_skill_url(@player_ball_skill)
    assert_response :success
  end

  test "should get edit" do
    get edit_player_ball_skill_url(@player_ball_skill)
    assert_response :success
  end

  test "should update player_ball_skill" do
    patch player_ball_skill_url(@player_ball_skill), params: { player_ball_skill: { dribbline: @player_ball_skill.dribbline, heading: @player_ball_skill.heading, juggling: @player_ball_skill.juggling, longBalls: @player_ball_skill.longBalls, receiving: @player_ball_skill.receiving, shooting: @player_ball_skill.shooting } }
    assert_redirected_to player_ball_skill_url(@player_ball_skill)
  end

  test "should destroy player_ball_skill" do
    assert_difference('PlayerBallSkill.count', -1) do
      delete player_ball_skill_url(@player_ball_skill)
    end

    assert_redirected_to player_ball_skills_url
  end
end
