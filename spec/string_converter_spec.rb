# frozen_string_literal: true

require_relative "../lib/string_converter"

describe StringConverter do
  describe "#convert" do
    it "returns the string type" do
      expect(StringConverter.convert("aa bb cc")).to eq("aa\nbb\ncc")
    end
  end
end
