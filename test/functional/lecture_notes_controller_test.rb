require 'test_helper'

class LectureNotesControllerTest < ActionController::TestCase
  setup do
    @lecture_note = lecture_notes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lecture_notes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lecture_note" do
    assert_difference('LectureNote.count') do
      post :create, lecture_note: @lecture_note.attributes
    end

    assert_redirected_to lecture_note_path(assigns(:lecture_note))
  end

  test "should show lecture_note" do
    get :show, id: @lecture_note.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lecture_note.to_param
    assert_response :success
  end

  test "should update lecture_note" do
    put :update, id: @lecture_note.to_param, lecture_note: @lecture_note.attributes
    assert_redirected_to lecture_note_path(assigns(:lecture_note))
  end

  test "should destroy lecture_note" do
    assert_difference('LectureNote.count', -1) do
      delete :destroy, id: @lecture_note.to_param
    end

    assert_redirected_to lecture_notes_path
  end
end
