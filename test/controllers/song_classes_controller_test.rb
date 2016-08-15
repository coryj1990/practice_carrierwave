require 'test_helper'

class SongClassesControllerTest < ActionController::TestCase
  setup do
    @song_class = song_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:song_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create song_class" do
    assert_difference('SongClass.count') do
      post :create, song_class: { audio_file: @song_class.audio_file }
    end

    assert_redirected_to song_class_path(assigns(:song_class))
  end

  test "should show song_class" do
    get :show, id: @song_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @song_class
    assert_response :success
  end

  test "should update song_class" do
    patch :update, id: @song_class, song_class: { audio_file: @song_class.audio_file }
    assert_redirected_to song_class_path(assigns(:song_class))
  end

  test "should destroy song_class" do
    assert_difference('SongClass.count', -1) do
      delete :destroy, id: @song_class
    end

    assert_redirected_to song_classes_path
  end
end
