require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get contacts_new_url
    assert_response :success
  end

  test "should get create" do
    get contacts_create_url
    assert_response :success
  end

  test "should get new_produit" do
    get contacts_new_produit_url
    assert_response :success
  end

  test "should get create_produit" do
    get contacts_create_produit_url
    assert_response :success
  end

end
