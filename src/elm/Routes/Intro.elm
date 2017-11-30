module Routes.Intro exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)
import Components.Accordion exposing (..)


intro : Model -> Html Msg
intro model =
    div [ class "mh2" ]
        [ accordion model ]
