module Routes.Government exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


government : Model -> Html Msg
government model =
    div [ class "pa1" ]
        [ div [ class "pa3 mt3 mb3 dark-gray b f4" ]
            [ text "what message would you like to give to:" ]
        , div [ class "flex justify-center" ]
            [ input [ id "local", name "government", type_ "radio", value "Local Services", class "dn" ]
                []
            , label [ for "local", class "bg-white pa3 pointer ba b--dark-gray mw4 br--left br1" ]
                [ text "Local Services " ]
            , input [ id "national", name "government", type_ "radio", value "National Government", class "dn" ]
                []
            , label [ for "national", class "bg-white pa3 pointer br bt bb b--dark-gray mw4 br--right br1" ]
                [ text "National Government  " ]
            ]
        ]
