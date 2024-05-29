require "test_helper"

class RedirectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get redirects_index_url
    assert_response :success
  end

  test "should get vulnerable" do
    get redirects_vulnerable_url
    assert_response :success
  end

  test "should get secure" do
    get redirects_secure_url
    assert_response :success
  end
end
