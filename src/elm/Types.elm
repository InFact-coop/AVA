module Types exposing (..)

import Navigation


-- Model


type Route
    = WelcomeRoute
    | IntroRoute
    | AboutYouRoute
    | JourneyRoute
    | GovernmentRoute
    | DisclosureRoute
    | ThanksRoute


type alias Model =
    { route : Route
    , userInput : String
    }



-- Update


type Msg
    = Change String
    | UrlChange Navigation.Location
