module Routes.Welcome exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


welcome : Model -> Html Msg
welcome model =
    div [ class "pa2" ]
        [ div [ class "pb3 vh-25 w-100 relative overflow-hidden mb3" ]
            [ img [ class "br1 w-100 absolute overflow-hidden contain bg-bottom", src "./assets/happywomen.jpg" ]
                []
            ]
        , div [ class "bg-light-gray pa3" ]
            [ div [ class "br1 pa3 bg-light-gray b tc dark-gray" ]
                [ text "I am a survivor and I want to make a change." ]
            , div [ class "br1 tc w2 h2 bg-white m0-auto ba b--mid-gray flex pa1" ]
                [ img [ src "./assets/svg/tick.svg", class "contain flex justify-center" ]
                    []
                ]
            ]
        , a [ class "orange-button", href "#intro" ] [ text "next" ]
        ]
