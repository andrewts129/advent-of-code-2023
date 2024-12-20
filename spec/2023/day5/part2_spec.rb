# frozen_string_literal: true

require "spec_helper"
require "2023/day5/part2"

describe Day5Part2 do
  describe ".solution" do
    subject(:result) { described_class.solution(input) }

    context "on the sample input" do
      let(:input) { <<~TEXT.split("\n") }
        seeds: 79 14 55 13

        seed-to-soil map:
        50 98 2
        52 50 48

        soil-to-fertilizer map:
        0 15 37
        37 52 2
        39 0 15

        fertilizer-to-water map:
        49 53 8
        0 11 42
        42 0 7
        57 7 4

        water-to-light map:
        88 18 7
        18 25 70

        light-to-temperature map:
        45 77 23
        81 45 19
        68 64 13

        temperature-to-humidity map:
        0 69 1
        1 0 69

        humidity-to-location map:
        60 56 37
        56 93 4
      TEXT

      it "returns the correct value" do
        expect(result).to eq(46)
      end
    end

    context "on the real input" do
      let(:input) { File.readlines("spec/2023/day5/input.txt") }

      it "returns the correct value" do
        expect(result).to eq(17729182)
      end
    end
  end
end
