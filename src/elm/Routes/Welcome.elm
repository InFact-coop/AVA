module Routes.Welcome exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


welcome : Model -> Html Msg
welcome model =
    div [] [ text "This is welcome" ]
