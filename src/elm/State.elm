module State exposing (..)

import Types exposing (..)


-- MODEL


initModel : Model
initModel =
    { route = WelcomeRoute
    , userInput = ""
    }



--UPDATE


getRoute : String -> Route
getRoute hash =
    case hash of
        "#welcome" ->
            WelcomeRoute

        "#intro" ->
            IntroRoute

        "#aboutYou" ->
            AboutYouRoute

        "#journey" ->
            JourneyRoute

        "#government" ->
            GovernmentRoute

        "#disclosure" ->
            DisclosureRoute

        "#thanks" ->
            ThanksRoute

        _ ->
            WelcomeRoute


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Change newInput ->
            ( { model | userInput = newInput }, Cmd.none )

        UrlChange location ->
            ( { model | route = getRoute location.hash }, Cmd.none )
