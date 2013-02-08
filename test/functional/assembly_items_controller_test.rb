require 'test_helper'

class AssemblyItemsControllerTest < ActionController::TestCase
  setup do
    @assembly_item = assembly_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assembly_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assembly_item" do
    assert_difference('AssemblyItem.count') do
      post :create, :assembly_item => { :amount => @assembly_item.amount, :assemblable_id => @assembly_item.assemblable_id, :bottom => @assembly_item.bottom, :comments => @assembly_item.comments, :position => @assembly_item.position, :type => @assembly_item.type }
    end

    assert_redirected_to assembly_item_path(assigns(:assembly_item))
  end

  test "should show assembly_item" do
    get :show, :id => @assembly_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @assembly_item
    assert_response :success
  end

  test "should update assembly_item" do
    put :update, :id => @assembly_item, :assembly_item => { :amount => @assembly_item.amount, :assemblable_id => @assembly_item.assemblable_id, :bottom => @assembly_item.bottom, :comments => @assembly_item.comments, :position => @assembly_item.position, :type => @assembly_item.type }
    assert_redirected_to assembly_item_path(assigns(:assembly_item))
  end

  test "should destroy assembly_item" do
    assert_difference('AssemblyItem.count', -1) do
      delete :destroy, :id => @assembly_item
    end

    assert_redirected_to assembly_items_path
  end
end
