module Routes.Intro exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)
import Components.Accordion exposing (..)


intro : Model -> Html Msg
intro model =
    div [ class "m2 center" ]
        [ iframe [ src "https://www.youtube-nocookie.com/embed/VGrBCs_EbZU", class "center db mh2" ] []
        , accordion model
        , a [ class "orange-button", href "#journey" ] [ text "Let's go" ]
        ]
