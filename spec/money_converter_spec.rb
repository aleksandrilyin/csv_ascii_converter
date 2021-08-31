# frozen_string_literal: true

require_relative "../lib/money_converter"

describe MoneyConverter do
  describe "#convert" do
    it "returns the money type" do
      expect(MoneyConverter.convert(1000.33)).to eq("1 000,33")
      expect(MoneyConverter.convert(0.001)).to eq("0,01")
      expect(MoneyConverter.convert(0.0)).to eq("0,00")
    end
  end
end
