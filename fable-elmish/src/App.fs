module App

open Elmish

type Model = int

type Msg =
  | Increment
  | Decrement
  | Reset

let init () : Model = 0

let update msg model =
    match msg with
    | Increment -> model + 1
    | Decrement -> model - 1
    | Reset -> 0


open Fable.React
open Fable.React.Props

let view model dispatch =
  div [
  ] [
    button [ OnClick (fun _ -> dispatch Increment) ] [ str "+" ]
    div [ ] [ sprintf "%d" model |> str ]
    button [ OnClick (fun _ -> dispatch Decrement) ] [ str "-" ]
    button [ OnClick (fun _ -> dispatch Reset) ] [ str "reset" ]
  ]



open Elmish.React
Program.mkSimple init update view
|> Program.withReactBatched "app"
|> Program.withConsoleTrace
|> Program.run
