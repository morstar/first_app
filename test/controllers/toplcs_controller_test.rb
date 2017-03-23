require 'test_helper'

class ToplcsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @toplc = toplcs(:one)
  end

  test "should get index" do
    get toplcs_url
    assert_response :success
  end

  test "should get new" do
    get new_toplc_url
    assert_response :success
  end

  test "should create toplc" do
    assert_difference('Toplc.count') do
      post toplcs_url, params: { toplc: { description: @toplc.description, title: @toplc.title } }
    end

    assert_redirected_to toplc_url(Toplc.last)
  end

  test "should show toplc" do
    get toplc_url(@toplc)
    assert_response :success
  end

  test "should get edit" do
    get edit_toplc_url(@toplc)
    assert_response :success
  end

  test "should update toplc" do
    patch toplc_url(@toplc), params: { toplc: { description: @toplc.description, title: @toplc.title } }
    assert_redirected_to toplc_url(@toplc)
  end

  test "should destroy toplc" do
    assert_difference('Toplc.count', -1) do
      delete toplc_url(@toplc)
    end

    assert_redirected_to toplcs_url
  end
end
