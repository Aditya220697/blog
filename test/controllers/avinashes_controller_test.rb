require "test_helper"

class AvinashesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @avinash = avinashes(:one)
  end

  test "should get index" do
    get avinashes_url
    assert_response :success
  end

  test "should get new" do
    get new_avinash_url
    assert_response :success
  end

  test "should create avinash" do
    assert_difference("Avinash.count") do
      post avinashes_url, params: { avinash: { age: @avinash.age, name: @avinash.name } }
    end

    assert_redirected_to avinash_url(Avinash.last)
  end

  test "should show avinash" do
    get avinash_url(@avinash)
    assert_response :success
  end

  test "should get edit" do
    get edit_avinash_url(@avinash)
    assert_response :success
  end

  test "should update avinash" do
    patch avinash_url(@avinash), params: { avinash: { age: @avinash.age, name: @avinash.name } }
    assert_redirected_to avinash_url(@avinash)
  end

  test "should destroy avinash" do
    assert_difference("Avinash.count", -1) do
      delete avinash_url(@avinash)
    end

    assert_redirected_to avinashes_url
  end
end
