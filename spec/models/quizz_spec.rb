require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Quizz do
  before(:each) do
    @valid_attributes = {
      :title => "value for title",
      :description => "value for description"
    }
  end

  it "should create a new instance given valid attributes" do
    Quizz.create!(@valid_attributes)
  end
end
