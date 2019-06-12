module Main exposing (main)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)


main =
    Browser.sandbox { init = init, update = update, view = view }

type Msg
    = Flip

update : Msg -> Model -> Model
update msg model =
    case msg of
        Flip ->
            case model.buttonValue of
                "O" ->
                    { model | buttonValue = "X"}

                "X" ->
                    { model | buttonValue = "O"}

                _ ->
                    model


type alias Model =
    { buttonValue : String
    }

init : Model
init =
    { buttonValue = "O"
    }


view model =
    div []
        [ button [ onClick Flip ] [ text model.buttonValue ]
        ]