module Main exposing (main)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)


main =
    Browser.sandbox { init = init, update = update, view = view }


type alias Board =
    List (List Player)


type alias Model =
    { currentPlayer : Player
    , board : Board
    }


type Player
    = NoPlayer
    | X
    | O


init : Model
init =
    { currentPlayer = X
    , board =
        [ [ NoPlayer, NoPlayer, NoPlayer ]
        , [ NoPlayer, NoPlayer, NoPlayer ]
        , [ NoPlayer, NoPlayer, NoPlayer ]
        ]
    }


type alias Cell =
    { row : Int, col : Int }


type Msg
    = Flip Cell


update : Msg -> Model -> Model
update msg model =
    case msg of
        Flip cell ->
            { model | board = updateBoard cell model.currentPlayer model.board, currentPlayer = nextPlayer model.currentPlayer }



{- Secondly, we realise we need a get function to get the row to modify. -}


updateBoard : Cell -> Player -> Board -> Board
updateBoard cell player board =
    case listGetAt cell.row board of
        Just row ->
            listSetAt cell.row (listSetAt cell.col player row) board

        Nothing ->
            board



{- Third,  the get function can not guarantee a value so it is a Maybe. -}


listGetAt : Int -> List a -> Maybe a
listGetAt index list =
    case list of
        head :: tail ->
            if index <= 0 then
                Just head

            else
                listGetAt (index - 1) tail

        [] ->
            Nothing



{- The board is a list of lists, so first we do this to replace a value in a list. -}


listSetAt : Int -> a -> List a -> List a
listSetAt index newValue list =
    List.indexedMap
        (\n current ->
            if n == index then
                newValue

            else
                current
        )
        list


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
        , viewBoard model.board
        ]


viewBoard : Board -> Html Msg
viewBoard board =
    div []
        (List.indexedMap viewRow board)


viewRow : Int -> List Player -> Html Msg
viewRow rowIndex rowData =
    div []
        (List.indexedMap (viewButton rowIndex) rowData)


viewButton : Int -> Int -> Player -> Html Msg
viewButton row col player =
    button [ onClick (Flip (Cell row col)) ] [ text (playerToString player) ]


playerToString : Player -> String
playerToString p =
    case p of
        X ->
            "X"

        O ->
            "O"

        NoPlayer ->
            "_"
