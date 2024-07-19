defmodule RomanNumeralsTest do
  use ExUnit.Case

  describe "to_roman/1" do
    test "to_roman/1 converts arabic numbers to roman numerals" do
      assert RomanNumerals.to_roman(1) == "I"
      assert RomanNumerals.to_roman(4) == "IV"
      assert RomanNumerals.to_roman(5) == "V"
      assert RomanNumerals.to_roman(6) == "VI"
      assert RomanNumerals.to_roman(9) == "IX"
      assert RomanNumerals.to_roman(10) == "X"
      assert RomanNumerals.to_roman(40) == "XL"
      assert RomanNumerals.to_roman(50) == "L"
      assert RomanNumerals.to_roman(64) == "LXIV"
      assert RomanNumerals.to_roman(90) == "XC"
      assert RomanNumerals.to_roman(100) == "C"
      assert RomanNumerals.to_roman(128) == "CXXVIII"
      assert RomanNumerals.to_roman(256) == "CCLVI"
      assert RomanNumerals.to_roman(400) == "CD"
      assert RomanNumerals.to_roman(500) == "D"
      assert RomanNumerals.to_roman(512) == "DXII"
      assert RomanNumerals.to_roman(777) == "DCCLXXVII"
      assert RomanNumerals.to_roman(900) == "CM"
      assert RomanNumerals.to_roman(999) == "CMXCIX"
      assert RomanNumerals.to_roman(1000) == "M"
    end
  end
end
