defmodule RomanNumerals do
  def to_roman(num) when num >= 1000, do: "M" <> to_roman(num - 1000)
  def to_roman(num) when num >= 900, do: "CM" <> to_roman(num - 900)
  def to_roman(num) when num >= 500, do: "D" <> to_roman(num - 500)
  def to_roman(num) when num >= 400, do: "CD" <> to_roman(num - 400)
  def to_roman(num) when num >= 100, do: "C" <> to_roman(num - 100)
  def to_roman(num) when num >= 90, do: "XC" <> to_roman(num - 90)
  def to_roman(num) when num >= 50, do: "L" <> to_roman(num - 50)
  def to_roman(num) when num >= 40, do: "XL" <> to_roman(num - 40)
  def to_roman(num) when num >= 10, do: "X" <> to_roman(num - 10)
  def to_roman(9), do: "IX"
  def to_roman(num) when num >= 5, do: "V" <> to_roman(num - 5)
  def to_roman(4), do: "IV"
  def to_roman(num) when num > 0, do: "I" <> to_roman(num - 1)
  def to_roman(0), do: ""
end
