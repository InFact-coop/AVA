module Components.Heading exposing (..)

import Components.PurpleButton exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


heading : Model -> Html Msg
heading model =
    section [ class "header" ]
        [ div [ class "bg-dark-gray arial tc white b pv1" ] [ a [ class "white", href "http://www.bbc.co.uk/news" ] [ text "LEAVE SITE NOW >>" ] ]
        , div [ class "bg-light-gray pa2" ]
            [ purpleButton model "I need help"
            , purpleButton model "Contact us"
            ]
        , div [ class "branding pv3 flex justify-between items-center" ]
            [ img [ class "h3 dib ml2", src "./assets/avaWithTag.jpg", alt "AVA" ] []
            , div [ class "" ]
                [ span [ class "v-mid mr2" ] [ text "MENU" ]
                , div
                    [ class "dib burger v-mid mr2 w2half ba b--dark-teal" ]
                    []
                ]
            ]
        , header [ class "bg-dark-teal br2 mh2" ] [ h1 [ class "white f2 ma0 pa2" ] [ text "Positive Change" ] ]
        , div [ class "breadcrumbs mh2 mv3" ]
            [ span [ class "dark-teal" ] [ text "Home" ]
            , span [] [ text " / " ]
            , span [ class "dark-teal" ] [ text "Positive Change" ]
            , span [] [ text <| finalBreadCrumb model.route ]
            ]
        ]


finalBreadCrumb : Route -> String
finalBreadCrumb route =
    case route of
        WelcomeRoute ->
            " / Welcome"

        IntroRoute ->
            " / Disclaimer"

        AboutYouRoute ->
            " / About You"

        JourneyRoute ->
            " / Your Journey"

        GovernmentRoute ->
            " / Your Message"

        DisclosureRoute ->
            " / Disclosure"

        ThanksRoute ->
            " / Thank You"
