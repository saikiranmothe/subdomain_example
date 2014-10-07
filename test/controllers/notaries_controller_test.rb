require 'test_helper'

class NotariesControllerTest < ActionController::TestCase
  setup do
    @notary = notaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:notaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create notary" do
    assert_difference('Notary.count') do
      post :create, notary: { info: @notary.info, name: @notary.name }
    end

    assert_redirected_to notary_path(assigns(:notary))
  end

  test "should show notary" do
    get :show, id: @notary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @notary
    assert_response :success
  end

  test "should update notary" do
    patch :update, id: @notary, notary: { info: @notary.info, name: @notary.name }
    assert_redirected_to notary_path(assigns(:notary))
  end

  test "should destroy notary" do
    assert_difference('Notary.count', -1) do
      delete :destroy, id: @notary
    end

    assert_redirected_to notaries_path
  end
end
