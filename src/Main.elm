module Main exposing (main)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)


main =
    Browser.sandbox { init = init, update = update, view = view }


type alias Model =
    { buttonValue : Player
    }


type Player
    = NoPlayer
    | X
    | O


init : Model
init =
    { buttonValue = NoPlayer
    }


type Msg
    = Flip


update : Msg -> Model -> Model
update msg model =
    case msg of
        Flip ->
            if model.buttonValue == X then
                { model | buttonValue = X }

            else
                { model | buttonValue = O }


view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Flip ] [ text (playerToString model.buttonValue) ]
        ]


playerToString : Player -> String
playerToString p =
    case p of
        X ->
            "X"

        O ->
            "O"

        NoPlayer ->
            "_"
