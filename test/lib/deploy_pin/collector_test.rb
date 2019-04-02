require 'test_helper'

class DeployPin::Collector::Test < ActiveSupport::TestCase
  setup do
    DeployPin.setup do
      tasks_path './tmp/'
      groups ["I", "II", "III"]
      fallback_group "I"
    end
  end

  collector = DeployPin::Collector.new(groups: [DeployPin.fallback_group])

  test "files" do
    assert_nothing_raised do
      collector.files
    end
  end

  test "tasks" do
    assert_nothing_raised do
      collector.tasks
    end
  end

  test "run" do
    assert_nothing_raised do
      collector.run {|x| }
    end
  end

  test "list" do
    assert_nothing_raised do
      collector.list {|x| }
    end
  end
end
