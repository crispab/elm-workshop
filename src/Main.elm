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
            if model.currentPlayer == X then
                { model | currentPlayer = O, buttonValue = X }

            else
                { model | currentPlayer = X, buttonValue = O }


view : Model -> Html Msg
view model =
    div []
        [ case model.buttonValue of
            NoPlayer ->
                button [ onClick Flip ] [ text "_" ]

            X ->
                button [ onClick Flip ] [ text "X" ]

            O ->
                button [ onClick Flip ] [ text "O" ]
        ]
