require 'test_helper'

class ClicksControllerTest < ActionController::TestCase
  setup do
    @click = clicks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clicks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create click" do
    assert_difference('Click.count') do
      post :create, click: { clickdate: @click.clickdate, ip: @click.ip, referer: @click.referer }
    end

    assert_redirected_to click_path(assigns(:click))
  end

  test "should show click" do
    get :show, id: @click
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @click
    assert_response :success
  end

  test "should update click" do
    put :update, id: @click, click: { clickdate: @click.clickdate, ip: @click.ip, referer: @click.referer }
    assert_redirected_to click_path(assigns(:click))
  end

  test "should destroy click" do
    assert_difference('Click.count', -1) do
      delete :destroy, id: @click
    end

    assert_redirected_to clicks_path
  end
end
