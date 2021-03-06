defmodule Tweet.FileReader do
  def get_strings_to_tweet(path) do
    File.read!(path)
    |> String.split("\n", trim: true)
    |> Enum.map(&String.trim/1)
    |> Enum.filter(&String.length(&1) <= 280)
    |> Enum.random()
  end
end
