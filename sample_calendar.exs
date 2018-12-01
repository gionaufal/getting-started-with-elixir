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

  def day_abbreviation2(day) do
    case day do
      :Monday -> "M"
      :Tuesday -> "Tu"
      :Wednesday -> "W"
      :Thrusday -> "Th"
      :Friday -> "F"
      :Saturday -> "Sa"
      :Sunday -> "Su"
      _ -> "Invalid day"
    end
  end

  def describe_date(date) do
    case date do
      {1, 10, _} -> "Happy Birthday"
      {1, _, _} -> "Brand new month!"
      {25, 12, _} -> "Merry Christmas"
      {_, month, _} when month <= 12 -> "Just an average day"
      {_, _, _} -> "Invalid month"
    end
  end

end
