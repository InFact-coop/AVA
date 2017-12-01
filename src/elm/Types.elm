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


type alias Tooltip =
    ( Int, String, Bool )


type alias Model =
    { route : Route
    , acceptQuiz : Bool
    , faqs : List ( String, String, Bool )
    , tooltips : List Tooltip
    }



-- Update


type Msg
    = UrlChange Navigation.Location
    | ShowAnswer ( String, String, Bool )
    | AcceptQuiz Bool
    | ToggleTooltip Tooltip
