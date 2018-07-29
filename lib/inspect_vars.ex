defmodule InspectVars do
  defmacro inspect(expressions) when is_list(expressions) do
    Enum.map(expressions, &build_inspection/1)
  end

  defp build_inspection({name, _, _} = expression) do
    quote do
      IO.inspect(unquote(expression), label: Atom.to_string(unquote(name)))
    end
  end
end
