module View exposing (..)

import Html exposing (..)


-- My Elm Files

import Types exposing (..)
import Routes.Welcome exposing (..)
import Routes.Intro exposing (..)
import Routes.AboutYou exposing (..)
import Routes.Journey exposing (..)
import Routes.Government exposing (..)
import Routes.Disclosure exposing (..)
import Routes.Thanks exposing (..)
import Routes.Navbar exposing (..)
import Components.Heading exposing (..)


view : Model -> Html Msg
view model =
    let
        page =
            case model.route of
                WelcomeRoute ->
                    welcome model

                IntroRoute ->
                    intro model

                AboutYouRoute ->
                    aboutYou model

                JourneyRoute ->
                    journey model

                GovernmentRoute ->
                    government model

                DisclosureRoute ->
                    disclosure model

                ThanksRoute ->
                    thanks model
    in
        div []
            [ navbar model
            , heading model
            , page
            ]
