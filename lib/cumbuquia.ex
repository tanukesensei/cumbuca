defmodule Cumbuquia do

  def rename_royal_names(names) do
    counts = %{}
    {numbered_names, _final_counts} =
      Enum.map_reduce(names, counts, fn name, acc ->
        count = Map.get(acc, name, 0) + 1
        new_acc = Map.put(acc, name, count)
        numbered_name = "#{name} #{RomanNumerals.to_roman(count)}"
        {numbered_name, new_acc}
      end)
    numbered_names
  end
end
