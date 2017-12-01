module Components.PurpleButton exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


purpleButton : Model -> String -> Html Msg
purpleButton model string =
    button [ class "purple-button arial b pa2 br1 white bg-purple bn mr2" ]
        [ text string ]
