module Routes.Welcome exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
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
                [ text "I am a survivor and want positive change to help women facing violence and abuse." ]
            , div [ class "br1 tc w2 h2 bg-white m0-auto ba b--mid-gray flex pa1" ]
                [ div [ class <| "h4 w4 " ++ toggleCheck model.acceptQuiz, onClick (AcceptQuiz model.acceptQuiz) ]
                    []
                ]
            ]
        , a [ class <| toggleButton model.acceptQuiz, href "#intro" ] [ text "next" ]
        ]


toggleButton : Bool -> String
toggleButton bool =
    if bool == True then
        "orange-button"
    else
        "gray-button"


toggleCheck : Bool -> String
toggleCheck bool =
    if bool == True then
        "checked"
    else
        ""
