module Routes.Journey exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


journey : Model -> Html Msg
journey model =
    div [ class "mh2" ]
        [ label [ for "affected-list", class "b" ] [ text "Please let us know what has affected you." ]
        , input [ type_ "checkbox", id "affected-list" ] []
        ]
