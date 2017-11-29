module Routes.Intro exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


intro : Model -> Html Msg
intro model =
    div [] [ text "This is Intro" ]
