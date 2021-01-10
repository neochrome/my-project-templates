open Tea

type model = int
type msg =
  | Increment
  | Decrement
  | Reset
  [@@bs.deriving accessors]


let subscriptions _model = Sub.none

let init () = 0, Cmd.none

let update model msg =
  match msg with
  | Increment -> model + 1, Cmd.none
  | Decrement -> model - 1, Cmd.none
  | Reset -> 0, Cmd.none


let view model =
  let open Html2 in
  let module A = Attributes in
  let module E = Events in
  div []
    [ button [ E.onClick Increment ] [ text "+" ]
    ; div [ ] [ model |> string_of_int |> text ]
    ; button [ E.onClick Decrement ] [ text "-" ]
    ; button [ E.onClick Reset ] [ text "reset" ]
    ]


let () =
  Tea.App.standardProgram {
    init;
    subscriptions;
    update;
    view;
  }
  (Web.Document.getElementById "app") () |> ignore
