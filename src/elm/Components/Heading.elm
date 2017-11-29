module Components.Heading exposing (..)

import Components.PurpleButton exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


heading : Model -> Html Msg
heading model =
    section [ class "header" ]
        [ div [ class "bg-dark-gray arial tc white b pv1" ] [ text "LEAVE SITE NOW >>" ]
        , div [ class "bg-light-gray pa2" ]
            [ purpleButton model "I need help"
            , purpleButton model "Contact us"
            ]
        , div [ class "branding" ]
            [ img [ class "h3 pv3 dib", src "./assets/brand.jpg", alt "AVA" ] []
            , div [ class "dib burger w3 h3 ba b--dark-teal" ] []
            ]
        ]
