defmodule Sample.Calendar do

  def leap_year(year) when rem(year, 400) == 0, do: true
  def leap_year(year) when rem(year, 100) == 0, do: false
  def leap_year(year) when rem(year, 4) == 0, do: true
  def leap_year(_), do: false

  def day_abbreviation(day) do
    cond do
      day == :Monday -> "M"
      day == :Tuesday -> "Tu"
      day == :Wednesday -> "W"
      day == :Thrusday -> "Th"
      day == :Friday -> "F"
      day == :Saturday -> "Sa"
      day == :Sunday -> "Su"
      true -> "Invalid day"
    end
  end

end
