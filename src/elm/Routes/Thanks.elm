module Routes.Thanks exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


thanks : Model -> Html Msg
thanks model =
    div [ class "pa1" ]
        [ div [ class "pa1 w-100 flex justify-center items-center" ]
            [ div [ class "mw5 tc ma0-auto self-center" ]
                [ h2 [ class "dark-gray b f2 tc mt2 mb2" ]
                    [ text "Thank you for sharing " ]
                , p [ class "tc fw1" ]
                    [ text "We hope your message will inspire change for women across the country!"
                    , p []
                        []
                    ]
                ]
            ]
        , div [ class "flex flex-wrap justify-center items-center" ]
            [ div [ class "bg-light-teal white pa3 ma2 w-40 tc br1" ] [ text "Join our newsletter?" ]
            , div [ class "bg-light-teal white pa3 ma2 w-40 tc br1" ] [ text "Join our network" ]
            , div [ class "bg-light-teal white pa3 ma2 w-40 tc br1" ] [ text "Get in touch with us" ]
            , div [ class "bg-light-teal white pa3 ma2 w-40 tc br1" ] [ text "Do you need help?" ]
            ]
        ]
