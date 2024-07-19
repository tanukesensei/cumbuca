defmodule CumbuquiaTest do
  use ExUnit.Case

  describe "rename_royal_names/1" do
    test "rename_royal_names/1 numbers names correctly" do
      names = ["Luan", "Luan", "Luan", "João Paulo", "João Paulo", "Lais", "Vanessa", "Vanessa", "Vanessa", "Vanessa", "Vanessa",]
      expected = [ "Luan I", "Luan II", "Luan III", "João Paulo I", "João Paulo II", "Lais I", "Vanessa I", "Vanessa II", "Vanessa III", "Vanessa IV", "Vanessa V",]
      assert Cumbuquia.rename_royal_names(names) == expected
    end
  end
end
