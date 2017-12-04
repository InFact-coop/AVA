module Routes.Government exposing (..)

import Components.Help exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


government : Model -> Html Msg
government model =
    div [ class "pa1" ]
        [ div [ class "pa2 dark-gray b f4 flex" ]
            [ text "What message would you like to give to:", help model 7 ]
        , div [ class "flex justify-center" ]
            [ input [ id "localGov", name "governmentNatLoc", type_ "radio", value "LocalGov", class "dn" ]
                []
            , label [ for "localGov", class "bg-white pa3 pointer ba b--mid-gray mw4 br--left br1" ]
                [ text "Local Services" ]
            , input [ id "nationalGov", name "governmentNatLoc", type_ "radio", value "NationalGov", class "dn" ]
                []
            , label [ for "nationalGov", class "bg-white pa3 pointer br bt bb b--mid-gray mw4 br--right br1" ]
                [ text "National Government " ]
            ]
        , div [ class "flex justify-center mt3 mb3 vh-25" ]
            [ textarea [ class "bg-light-gray ba b--mid-gray w-90", placeholder "Please tell us your message here" ]
                []
            ]
        , a [ class "orange-button", href "#aboutYou" ] [ text "next" ]
        ]
