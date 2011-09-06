require "minitest/spec"

module MiniTest::Matchers
  VERSION = "1.0.3"

  def must &block
    matcher = nil

    it "must" do
      matcher = instance_eval &block

      self.class.test_descriptions[__method__.to_s] = "must " + matcher.description
      result = matcher.matches? subject

      failure_message = if matcher.respond_to? :failure_message
                          matcher.failure_message
                        else
                          "expected to " + matcher.description
                        end

      assert result, failure_message
    end

    matcher
  end

  def wont &block
    matcher = nil

    it "wont" do
      matcher = yield

      result = if matcher.respond_to? :does_not_match?
                 matcher.does_not_match?(subject)
               else
                 !matcher.matches?(subject)
               end

      self.class.test_descriptions[__method__.to_s] = "wont " + matcher.description

      failure_message = if matcher.respond_to? :negative_failure_message
                          matcher.negative_failure_message
                        else
                          "expected not to " + matcher.description
                        end

      assert result, failure_message
    end

    matcher
  end

  def check_matcher matcher
    [:description, :matches?].each do |m|
      if !matcher.respond_to?(m) || matcher.send(:description).nil?
        fail "Matcher must respond to #{m}"
      end
    end
  end
end

class MiniTest::Spec
  extend MiniTest::Matchers
end
