module Main exposing (main)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)


main =
    Browser.sandbox
        { init = Model X NoPlayer
        , update = update
        , view = view
        }


type Msg
    = Flip


type alias Model =
    { currentPlayer : Player
    , buttonValue : Player
    }


type Player
    = NoPlayer
    | X
    | O


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
