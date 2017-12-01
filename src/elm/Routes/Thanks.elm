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
            [ a [ class "bg-light-teal white pa3 ma2 w-40 tc br1 h4 flex items-center db", href "https://avaproject.org.uk/" ] [ text "Sign up to email newsletter?" ]
            , a [ class "bg-light-teal white pa3 ma2 w-40 tc br1 h4 flex items-center db", href "https://avaproject.org.uk/" ] [ text "Join our expert by experience network" ]
            , a [ class "bg-light-teal white pa3 ma2 w-40 tc br1 h4 flex items-center db", href "https://avaproject.org.uk/about/contact-us/" ] [ text "Get in touch with us at AVA" ]
            , a [ class "bg-light-teal white pa3 ma2 w-40 tc br1 h4 flex items-center db", href "https://avaproject.org.uk/need-help/" ] [ text "Do you need help or support?" ]
            ]
        ]
