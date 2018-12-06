defmodule Tweet.Scheduler do
  def schedule_file(schedule, file) do
      Quantum.add_job(schedule, fn -> IO.puts(line(file)) end)
  end

  defp line(file) do
    file
    |> Tweet.FileReader.get_strings_to_tweet
  end
end
