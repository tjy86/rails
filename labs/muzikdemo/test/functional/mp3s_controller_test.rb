require 'test_helper'

class Mp3sControllerTest < ActionController::TestCase
  setup do
    @mp3 = mp3s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mp3s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mp3" do
    assert_difference('Mp3.count') do
      post :create, mp3: { name: @mp3.name, song: @mp3.song, youtube: @mp3.youtube }
    end

    assert_redirected_to mp3_path(assigns(:mp3))
  end

  test "should show mp3" do
    get :show, id: @mp3
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mp3
    assert_response :success
  end

  test "should update mp3" do
    put :update, id: @mp3, mp3: { name: @mp3.name, song: @mp3.song, youtube: @mp3.youtube }
    assert_redirected_to mp3_path(assigns(:mp3))
  end

  test "should destroy mp3" do
    assert_difference('Mp3.count', -1) do
      delete :destroy, id: @mp3
    end

    assert_redirected_to mp3s_path
  end
end
