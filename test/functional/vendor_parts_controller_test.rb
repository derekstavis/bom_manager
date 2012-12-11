require 'test_helper'

class VendorPartsControllerTest < ActionController::TestCase
  setup do
    @vendor_part = vendor_parts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vendor_parts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vendor_part" do
    assert_difference('VendorPart.count') do
      post :create, :vendor_part => { :part_number => @vendor_part.part_number }
    end

    assert_redirected_to vendor_part_path(assigns(:vendor_part))
  end

  test "should show vendor_part" do
    get :show, :id => @vendor_part
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @vendor_part
    assert_response :success
  end

  test "should update vendor_part" do
    put :update, :id => @vendor_part, :vendor_part => { :part_number => @vendor_part.part_number }
    assert_redirected_to vendor_part_path(assigns(:vendor_part))
  end

  test "should destroy vendor_part" do
    assert_difference('VendorPart.count', -1) do
      delete :destroy, :id => @vendor_part
    end

    assert_redirected_to vendor_parts_path
  end
end
