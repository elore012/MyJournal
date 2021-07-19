require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  test "should be valid if category name is more than 4 letters" do
    user = User.create(id:2,email:"azar@me.com")
    category = Category.new(categoryname: "testing", categorybody: "testing", user: user)
    assert category.valid?
  end

  test "should be valid if category body is more than 4 letters" do
    user = User.create(id:2,email:"azar@me.com")
    category = Category.new(categoryname: "testing", categorybody: "testing", user: user)
    assert category.valid?
  end

  test "should be invalid if category name is nil" do
    user = User.create(id:2,email:"azar@me.com")
    category = Category.new(categoryname: "", categorybody: "testing", user: user)
    assert_not category.valid?
  end

  test "should be invalid if category body is nil" do
    user = User.create(id:2,email:"azar@me.com")
    category = Category.new(categoryname: "testing", categorybody: "", user: user)
    assert_not category.valid?
  end

  test "should be invalid if category name is less than 5 letters" do
    user = User.create(id:2,email:"azar@me.com")
    category = Category.new(categoryname: "test", categorybody: "testing", user: user)
    assert_not category.valid?
  end

  test "should be invalid if category body is less than 5 letters" do
    user = User.create(id:2,email:"azar@me.com")
    category = Category.new(categoryname: "testing", categorybody: "test", user: user)
    assert_not category.valid?
  end

  test "should be invalid if user is not signed in " do
    user = User.create(id:2,email:"azar@me.com")
    category = Category.new(categoryname: "testing", categorybody: "test")
    assert_not category.valid?
  end


 end
  


