require "test_helper"

class TaskTest < ActiveSupport::TestCase

  test " should save task if taskname has more than 4 letters" do
    task = Task.new(taskname:"testing")
    assert task.save
  end
end
