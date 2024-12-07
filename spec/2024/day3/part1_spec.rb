# frozen_string_literal: true

require "spec_helper"
require "2024/day3/part1"

describe Day3Part1 do
  describe ".solution" do
    subject(:result) { described_class.solution(input) }

    context "on the sample input" do
      let(:input) { <<~TEXT.split("\n") }
        xmul(2,4)%&mul[3,7]!@^do_not_mul(5,5)+mul(32,64]then(mul(11,8)mul(8,5))
      TEXT

      it "returns the correct value" do
        expect(result).to eq(161)
      end
    end

    context "on the real input" do
      let(:input) { File.readlines("spec/2024/day3/input.txt") }

      it "returns the correct value" do
        expect(result).to eq(170068701)
      end
    end
  end
end
