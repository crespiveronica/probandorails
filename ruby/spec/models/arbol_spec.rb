require 'spec_helper'

describe Node do

  it "should return pre-ordered tree [1,2,3,4,5]" do
    root = Node.new
    root.set_value(1)

    n2 = Node.new
    n2.set_value(2)

    n3 = Node.new
    n3.set_value(3)

    n4 = Node.new
    n4.set_value(4)

    n5 = Node.new
    n5.set_value(5)

    root.set_left(n2)
    root.set_right(n5)
    n2.set_left(n3)
    n2.set_right(n4)

    root.to_s.should eq("[1,2,3,4,5]")
  end

  it "should return one node" do
    root = Node.new
    root.set_value(1)

    root.to_s.should eq("[1]")
  end

  it "should return pre-ordered tree [4,1,2,3]" do
    root = Node.new
    root.set_value(4)

    n2 = Node.new
    n2.set_value(2)

    n3 = Node.new
    n3.set_value(3)

    n1 = Node.new
    n1.set_value(1)

    root.set_left(n1)
    root.set_right(n2)
    n2.set_right(n3)

    root.to_s.should eq("[4,1,2,3]")
  end

  it "should return left comb" do
    root = Node.new
    root.set_value(1)

    n2 = Node.new
    n2.set_value(2)

    n3 = Node.new
    n3.set_value(3)

    n4 = Node.new
    n4.set_value(4)

    n5 = Node.new
    n5.set_value(5)

    n6 = Node.new
    n6.set_value(6)

    root.set_left(n2)
    root.set_right(n4)
    n2.set_left(n3)
    n2.set_right(n5)
    n3.set_right(n6)

    root.to_s.should eq("[1,2,3,6,5,4]")
  end

  it "should return an array with even numbers" do
    root = Node.new
    root.set_value(1)

    n2 = Node.new
    n2.set_value(2)

    n3 = Node.new
    n3.set_value(3)

    n4 = Node.new
    n4.set_value(4)

    n5 = Node.new
    n5.set_value(5)

    n6 = Node.new
    n6.set_value(6)

    root.set_left(n2)
    root.set_right(n4)
    n2.set_left(n3)
    n2.set_right(n5)
    n3.set_right(n6)

    array = [2,6,4]

    root.select {|value| value % 2 == 0}.should eq(array) 
  end

  it "should return an array the numbers that are higher than 3" do
    root = Node.new
    root.set_value(1)

    n2 = Node.new
    n2.set_value(2)

    n3 = Node.new
    n3.set_value(3)

    n4 = Node.new
    n4.set_value(4)

    n5 = Node.new
    n5.set_value(5)

    n6 = Node.new
    n6.set_value(6)

    root.set_left(n2)
    root.set_right(n4)
    n2.set_left(n3)
    n2.set_right(n5)
    n3.set_right(n6)

    array = [6,5,4]

    root.select {|value| value > 3}.should eq(array)
  end

  it "should print a line per element" do
    # binding.pry
    root = Node.new
    root.set_value(1)

    n2 = Node.new
    n2.set_value(2)

    n3 = Node.new
    n3.set_value(3)

    n4 = Node.new
    n4.set_value(4)

    n5 = Node.new
    n5.set_value(5)

    n6 = Node.new
    n6.set_value(6)

    root.set_left(n2)
    root.set_right(n4)
    n2.set_left(n3)
    n2.set_right(n5)
    n3.set_right(n6)

    array = [6,5,4]

    root.select {|value| value > 3}.should eq(array)
  end

  it "should algo" do
    root = Node.new
    root.set_value(1)

    n2 = Node.new
    n2.set_value 2

    n4 = Node.new
    n4.set_value 4

    root.set_left n2
    root.set_right n4

    root.breadth_first_traverse do |x|
      puts x
    end
  end

end