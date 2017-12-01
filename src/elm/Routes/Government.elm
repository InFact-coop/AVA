module Routes.Government exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


government : Model -> Html Msg
government model =
    div [ class "pa1" ]
        [ div [ class "pa2  dark-gray b f4" ]
            [ text "What message would you like to give to:" ]
        , div [ class "flex justify-center" ]
            [ input [ id "local", name "government", type_ "radio", value "Local Services", class "dn" ]
                []
            , label [ for "local", class "bg-white pa3 pointer ba b--mid-gray mw4 br--left br1" ]
                [ text "Local Services " ]
            , input [ id "national", name "government", type_ "radio", value "National Government", class "dn" ]
                []
            , label [ for "national", class "bg-white pa3 pointer br bt bb b--mid-gray mw4 br--right br1" ]
                [ text "National Government  " ]
            ]
        , div [ class "flex justify-center mt3 mb3 vh-25" ]
            [ textarea [ class "bg-light-gray ba b--mid-gray w-90", placeholder "Please tell us your message here" ]
                []
            ]
        , div [ class "pa1 mt4  dark-gray b f4" ]
            [ text "Are you happy if your journey or message is shared?" ]
        , div [ class "ml3 mt3 mb3" ]
            [ input [ id "yes", name "yesno", type_ "radio", value "yes", class "dn" ]
                []
            , label [ for "yes", class "bg-white pa2 pl4 pr4 pointer ba b--mid-gray mw4 br--left br1 tc" ]
                [ text "Yes " ]
            , input [ id "no", name "yesno", type_ "radio", value "no", class "dn" ]
                []
            , label [ for "no", class "bg-white pa2 pl4 pr4 tc pointer br bt bb b--mid-gray mw4 br--right br1" ]
                [ text "No " ]
            ]
        , a [ class "orange-button", href "#aboutYou" ] [ text "next" ]
        ]
