require 'test_helper'

class CatgsControllerTest < ActionController::TestCase
  setup do
    @catg = catgs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:catgs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create catg" do
    assert_difference('Catg.count') do
      post :create, catg: { name: @catg.name, nop: @catg.nop }
    end

    assert_redirected_to catg_path(assigns(:catg))
  end

  test "should show catg" do
    get :show, id: @catg
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @catg
    assert_response :success
  end

  test "should update catg" do
    patch :update, id: @catg, catg: { name: @catg.name, nop: @catg.nop }
    assert_redirected_to catg_path(assigns(:catg))
  end

  test "should destroy catg" do
    assert_difference('Catg.count', -1) do
      delete :destroy, id: @catg
    end

    assert_redirected_to catgs_path
  end
end
