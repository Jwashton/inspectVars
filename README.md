# InspectVars

Macro for debugging, quickly see the current value of multiple variables, printed pretty with the var names in front
```
iex> game = [10, 9, 8]
...> p1 = 1
...> p2 = 2
...> InspectVars.inspect([game, p1, p2])
game: [10, 9, 8]
p1: 1
p2: 2
```

## Installation

Add :inspect_vars in `mix.exs`:

```elixir
def deps do
  [
    {:inspect_vars, git: "https://github.com/Jwashton/inspectVars"}
  ]
end
```

In the file where you want to debug, just add a line where you'd like the "breakpoint":
```elixir
    require InspectVars; InspectVars.inspect([vars])
```

Replace `vars` with a comma-seperated list of the variables you'd like to see the values of! :)
