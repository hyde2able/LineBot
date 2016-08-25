require 'test_helper'

class RecipeControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get recipe_show_url
    assert_response :success
  end

  test "should get materials" do
    get recipe_materials_url
    assert_response :success
  end

end
