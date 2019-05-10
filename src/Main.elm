module Main exposing (main)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)


main =
    Browser.sandbox { init = init, update = update, view = view }


type alias Model =
    { currentPlayer : Player
    , buttonValue : Player
    }


type Player
    = NoPlayer
    | X
    | O


init : Model
init =
    { currentPlayer = X
    , buttonValue = NoPlayer
    }


type Msg
    = Flip Player


update : Msg -> Model -> Model
update msg model =
    case msg of
        Flip player ->
            { model | buttonValue = player, currentPlayer = nextPlayer model.currentPlayer }


nextPlayer : Player -> Player
nextPlayer current =
    case current of
        NoPlayer ->
            X

        X ->
            O

        O ->
            X


view : Model -> Html Msg
view model =
    div []
        [ div [] [ text ("Current player: " ++ playerToString model.currentPlayer) ]
        , button [ onClick (Flip model.currentPlayer) ] [ text (playerToString model.buttonValue) ]
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
