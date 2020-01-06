require 'test_helper'

class TodoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save todo with nil title" do
  	todo = Todo.new
  	assert_not article.save
  end

  test "1 = 1" do
  	assert_equal( 1,1 )
  end
end
