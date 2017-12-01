module Components.Help exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)
import Components.TooltipExtract exposing (..)


help : Model -> Int -> Html Msg
help model int =
    let
        ( id, tooltiptext, isToggled ) =
            tooltipExtract model int
    in
        div [ class "di relative" ]
            [ div [ class <| "z-1 absolute f5 normal bg-yellow pa2 br2 tooltip " ++ tooltipToggle isToggled ] [ text <| tooltiptext ]
            , button [ class "br-100 bg-orange white circlehalf b bn di ml2", onClick (ToggleTooltip (tooltipExtract model int)) ] [ text "?" ]
            ]


tooltipToggle : Bool -> String
tooltipToggle bool =
    if bool == True then
        "di"
    else
        "dn"
