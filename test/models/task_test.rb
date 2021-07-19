require "test_helper"

class TaskTest < ActiveSupport::TestCase

  test " should be valid if task name is more than 4 letters" do
    user=User.new(id:1,email:"azar@gmail.com")
    category = Category.new(id:1,categoryname:"School",categorybody:"coding",user:user)
    task = Task.new(taskname:"testing",taskbody:"testing",tasktime:"1 hour",category: category,user:user)
    assert task.valid?
  end

  test " should be valid if task body is more than 4 letters" do
    user=User.new(id:1,email:"azar@gmail.com")
    category = Category.new(id:1,categoryname:"School",categorybody:"coding",user:user)
    task = Task.new(taskname:"testing",taskbody:"testing",tasktime:"1 hour",category: category,user:user)
    assert task.valid?
  end

  test " should be valid if task time is present" do
    user=User.new(id:1,email:"azar@gmail.com")
    category = Category.new(id:1,categoryname:"School",categorybody:"coding",user:user)
    task = Task.new(taskname:"testing",taskbody:"testing",tasktime:"1 hour",category: category,user:user)
    assert task.valid?
  end

  test " should be invalid if category id is nil" do
    user=User.new(id:1,email:"azar@gmail.com")
    category = Category.new(id:1,categoryname:"School",categorybody:"coding",user:user)
    task = Task.new(taskname:"testing",taskbody:"testing",tasktime:"1 hour",user:user)
    assert_not task.valid?
  end

  test " should be invalid if user id is nil" do
    user=User.new(id:1,email:"azar@gmail.com")
    category = Category.new(id:1,categoryname:"School",categorybody:"coding",user:user)
    task = Task.new(taskname:"testing",taskbody:"testing",tasktime:"1 hour",category: category)
    assert_not task.valid?
  end

  test " should be invalid if task name is less than 5 letters" do
    user=User.new(id:1,email:"azar@gmail.com")
    category = Category.new(id:1,categoryname:"School",categorybody:"coding",user:user)
    task = Task.new(taskname:"test",taskbody:"testing",tasktime:"1 hour",category: category,user:user)
    assert_not task.valid?
  end

  test " should be invalid if task body is less than 5 letters" do
    user=User.new(id:1,email:"azar@gmail.com")
    category = Category.new(id:1,categoryname:"School",categorybody:"coding",user:user)
    task = Task.new(taskname:"testing",taskbody:"test",tasktime:"1 hour",category: category,user:user)
    assert_not task.valid?
  end

  test " should be invalid if category id is nil in task" do
    user=User.new(id:1,email:"azar@gmail.com")
    category = Category.new(id:1,categoryname:"School",categorybody:"coding",user:user)
    task = Task.new(taskname:"testing",taskbody:"testing",tasktime:"1 hour",user:user)
    assert_not task.valid?
  end
 
  test " should be invalid if user id is nil in task" do
    user=User.new(id:1,email:"azar@gmail.com")
    category = Category.new(id:1,categoryname:"School",categorybody:"coding",user:user)
    task = Task.new(taskname:"testing",taskbody:"testing",tasktime:"1 hour",category: category)
    assert_not task.valid?
  end

end
