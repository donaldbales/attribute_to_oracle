require 'test_helper'

class Test1sControllerTest < ActionController::TestCase
  setup do
    @test1 = test1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test1" do
    assert_difference('Test1.count') do
      post :create, test1: { attribute_binary: @test1.attribute_binary, attribute_boolean: @test1.attribute_boolean, attribute_date: @test1.attribute_date, attribute_datetime: @test1.attribute_datetime, attribute_decimal: @test1.attribute_decimal, attribute_float: @test1.attribute_float, attribute_integer: @test1.attribute_integer, attribute_references_id: @test1.attribute_references_id, attribute_string: @test1.attribute_string, attribute_text: @test1.attribute_text, attribute_time: @test1.attribute_time }
    end

    assert_redirected_to test1_path(assigns(:test1))
  end

  test "should show test1" do
    get :show, id: @test1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test1
    assert_response :success
  end

  test "should update test1" do
    patch :update, id: @test1, test1: { attribute_binary: @test1.attribute_binary, attribute_boolean: @test1.attribute_boolean, attribute_date: @test1.attribute_date, attribute_datetime: @test1.attribute_datetime, attribute_decimal: @test1.attribute_decimal, attribute_float: @test1.attribute_float, attribute_integer: @test1.attribute_integer, attribute_references_id: @test1.attribute_references_id, attribute_string: @test1.attribute_string, attribute_text: @test1.attribute_text, attribute_time: @test1.attribute_time }
    assert_redirected_to test1_path(assigns(:test1))
  end

  test "should destroy test1" do
    assert_difference('Test1.count', -1) do
      delete :destroy, id: @test1
    end

    assert_redirected_to test1s_path
  end
end
