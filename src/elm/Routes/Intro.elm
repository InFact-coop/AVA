module Routes.Intro exposing (..)

import Components.Accordion exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


intro : Model -> Html Msg
intro model =
    div [ class "pa1" ]
        [ div [ class "pa3 mt3 mb2 dark-gray b f4 tc" ] [ text "Sharing your experience will help us make a positive change to women and girls facing violence and abuse" ]
        , div [ class "m2 center" ]
            [ iframe [ src "https://www.youtube-nocookie.com/embed/VGrBCs_EbZU", class "center db mh2" ] []
            , accordion model
            , button [ class "orange-button" ] [ text "Let's go" ]
            ]
        ]
