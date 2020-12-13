require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success
  end

  test "should get contact" do
    get contact_url
    assert_response :success
  end

  test "should post request contact" do
    post request_contact_url, params: { name: "John Smith", email: "JohnSmith@email.com", telephone: "01234567890", message: "Example email message" }

    assert_response :redirect
    assert_nil flash[:alert]
    assert_not_empty flash[:notice]
  end

  test "should post request contact but no email" do
    post request_contact_url

    assert_response :redirect
    assert_not_empty flash[:alert]
    assert_nil flash[:notice]
  end

end
