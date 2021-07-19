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


 end
  # test "should not save category without category name " do
  #   user = User.new(id:3,email:"azar@me.com")
  #   category = Category.new(categoryname:"ting",categorybody:"test",user:user)
  #   assert_not category.save
  # end

  # test "should not save category if category name is less than 5 letters " do
  #   category = Category.new(categoryname:"test")
  #   assert_not category.save
  # end

  # test "should not save category without category body" do
  #   category = Category.new(categorybody:"")
  #   assert_not category.save
  # end

  # test "should not save category if category body is less than 5 letters" do
  #   category = Category.new(categorybody:"test")
  #   assert_not category.save


