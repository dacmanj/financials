require 'test_helper'

class FinancialStatementsControllerTest < ActionController::TestCase
  setup do
    @financial_statement = financial_statements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:financial_statements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create financial_statement" do
    assert_difference('FinancialStatement.count') do
      post :create, financial_statement: @financial_statement.attributes
    end

    assert_redirected_to financial_statement_path(assigns(:financial_statement))
  end

  test "should show financial_statement" do
    get :show, id: @financial_statement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @financial_statement
    assert_response :success
  end

  test "should update financial_statement" do
    put :update, id: @financial_statement, financial_statement: @financial_statement.attributes
    assert_redirected_to financial_statement_path(assigns(:financial_statement))
  end

  test "should destroy financial_statement" do
    assert_difference('FinancialStatement.count', -1) do
      delete :destroy, id: @financial_statement
    end

    assert_redirected_to financial_statements_path
  end
end
