require 'test_helper'

class SalesHistoriesControllerTest < ActionController::TestCase
  setup do
    @sales_history = sales_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sales_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sales_history" do
    assert_difference('SalesHistory.count') do
      post :create, sales_history: { activity_time: @sales_history.activity_time, customer_id: @sales_history.customer_id, detail: @sales_history.detail, sales_achievement: @sales_history.sales_achievement, sales_category: @sales_history.sales_category }
    end

    assert_redirected_to sales_history_path(assigns(:sales_history))
  end

  test "should show sales_history" do
    get :show, id: @sales_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sales_history
    assert_response :success
  end

  test "should update sales_history" do
    patch :update, id: @sales_history, sales_history: { activity_time: @sales_history.activity_time, customer_id: @sales_history.customer_id, detail: @sales_history.detail, sales_achievement: @sales_history.sales_achievement, sales_category: @sales_history.sales_category }
    assert_redirected_to sales_history_path(assigns(:sales_history))
  end

  test "should destroy sales_history" do
    assert_difference('SalesHistory.count', -1) do
      delete :destroy, id: @sales_history
    end

    assert_redirected_to sales_histories_path
  end
end
