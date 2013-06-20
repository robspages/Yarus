require 'test_helper'

class HttpstatusesControllerTest < ActionController::TestCase
  setup do
    @httpstatus = httpstatuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:httpstatuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create httpstatus" do
    assert_difference('Httpstatus.count') do
      post :create, httpstatus: { link_id: @httpstatus.link_id, status_code: @httpstatus.status_code }
    end

    assert_redirected_to httpstatus_path(assigns(:httpstatus))
  end

  test "should show httpstatus" do
    get :show, id: @httpstatus
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @httpstatus
    assert_response :success
  end

  test "should update httpstatus" do
    put :update, id: @httpstatus, httpstatus: { link_id: @httpstatus.link_id, status_code: @httpstatus.status_code }
    assert_redirected_to httpstatus_path(assigns(:httpstatus))
  end

  test "should destroy httpstatus" do
    assert_difference('Httpstatus.count', -1) do
      delete :destroy, id: @httpstatus
    end

    assert_redirected_to httpstatuses_path
  end
end
