module State exposing (..)

import Types exposing (..)


-- MODEL


initModel : Model
initModel =
    { route = WelcomeRoute
    , faqs =
        [ ( "Why do we need this information?"
          , "We are looking for for testimonies that reflect the diversity of Britain today. We hope to take your messages to Parliament when they discuss the DV Bill later this year"
          , False
          )
        , ( "Will I remain anonymous?"
          , "Lorum Ipsem"
          , False
          )
        ]
    , acceptQuiz = False
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
        UrlChange location ->
            ( { model | route = getRoute location.hash }, Cmd.none )

        AcceptQuiz bool ->
            ( { model | acceptQuiz = not model.acceptQuiz }, Cmd.none )

        ShowAnswer qatuple ->
            ( { model | faqs = List.map (\n -> findToggledQa n qatuple) model.faqs }, Cmd.none )


findToggledQa : ( String, String, Bool ) -> ( String, String, Bool ) -> ( String, String, Bool )
findToggledQa ( mappedQ, mappedA, isMappedToggled ) ( selectedQ, selectedA, isSelectedToggled ) =
    if selectedQ == mappedQ then
        ( selectedQ, selectedA, not isSelectedToggled )
    else
        ( mappedQ, mappedA, isMappedToggled )
