require "../spec_helper"

TIMESTAMP = 1427042133.035
TIME_STRING = "2015-03-22 16:35:33"
TIME = Time.new(2015, 3, 22, 16, 35, 33, 35)

class FloatEqualExpectation(T) < Spec::EqualExpectation(T)
  EPS = 1e-12

  def match(value)
    @target = value
    (value - @value).abs < EPS
  end
end

def float_eq(value)
  FloatEqualExpectation.new(value)
end

describe Time do
  describe ".from_timestamp" do
    it "instantiates proper Time instance out of timestamp value" do
      Time.from_timestamp(TIMESTAMP).to_s.should eq(TIME_STRING)
    end
  end

  describe "#to_timestamp" do
    it "returns proper float representation of timestamp" do
      TIME.to_timestamp.should float_eq(TIMESTAMP)
    end
  end
end
