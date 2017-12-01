module Components.TooltipExtract exposing (..)

import Types exposing (..)


listExtract : Tooltip -> Int -> Bool
listExtract ( id, tooltiptext, isToggled ) int =
    if id == int then
        True
    else
        False


tooltipExtract : Model -> Int -> Tooltip
tooltipExtract model int =
    let
        list =
            List.filter (\n -> listExtract n int)
                model.tooltips
    in
        case (List.head list) of
            Just tooltip ->
                tooltip

            Nothing ->
                ( 0, "", False )
