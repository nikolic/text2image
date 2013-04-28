require 'test_helper'

class Text2ImagesControllerTest < ActionController::TestCase
  setup do
    @text2_image = text2_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:text2_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create text2_image" do
    assert_difference('Text2Image.count') do
      post :create, text2_image: { text: @text2_image.text, url: @text2_image.url }
    end

    assert_redirected_to text2_image_path(assigns(:text2_image))
  end

  test "should show text2_image" do
    get :show, id: @text2_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @text2_image
    assert_response :success
  end

  test "should update text2_image" do
    put :update, id: @text2_image, text2_image: { text: @text2_image.text, url: @text2_image.url }
    assert_redirected_to text2_image_path(assigns(:text2_image))
  end

  test "should destroy text2_image" do
    assert_difference('Text2Image.count', -1) do
      delete :destroy, id: @text2_image
    end

    assert_redirected_to text2_images_path
  end
end
