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
    , faqs : List ( String, String, Bool )
    }



-- Update


type Msg
    = UrlChange Navigation.Location
    | ShowAnswer ( String, String, Bool )
