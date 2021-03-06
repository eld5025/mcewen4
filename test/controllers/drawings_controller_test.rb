require 'test_helper'

class DrawingsControllerTest < ActionController::TestCase
  setup do
    @drawing = drawings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drawings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drawing" do
    assert_difference('Drawing.count') do
      post :create, drawing: { brand: @drawing.brand, description: @drawing.description, length: @drawing.length, lengthinches: @drawing.lengthinches, newdrawing: @drawing.newdrawing, olddrawing: @drawing.olddrawing, shape: @drawing.shape, step: @drawing.step, subset: @drawing.subset, width: @drawing.width, widthinches: @drawing.widthinches, year: @drawing.year }
    end

    assert_redirected_to drawing_path(assigns(:drawing))
  end

  test "should show drawing" do
    get :show, id: @drawing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drawing
    assert_response :success
  end

  test "should update drawing" do
    patch :update, id: @drawing, drawing: { brand: @drawing.brand, description: @drawing.description, length: @drawing.length, lengthinches: @drawing.lengthinches, newdrawing: @drawing.newdrawing, olddrawing: @drawing.olddrawing, shape: @drawing.shape, step: @drawing.step, subset: @drawing.subset, width: @drawing.width, widthinches: @drawing.widthinches, year: @drawing.year }
    assert_redirected_to drawing_path(assigns(:drawing))
  end

  test "should destroy drawing" do
    assert_difference('Drawing.count', -1) do
      delete :destroy, id: @drawing
    end

    assert_redirected_to drawings_path
  end
end
