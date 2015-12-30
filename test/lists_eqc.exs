defmodule ListsEQC do
  use ExUnit.Case
  use EQC.ExUnit

  property "reversing a list twice gives back the original list" do
    forall l <- list(int) do
      ensure l |> Enum.reverse |> Enum.reverse == l
    end
  end

end
