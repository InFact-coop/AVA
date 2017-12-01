module State exposing (..)

import Types exposing (..)


-- MODEL


initModel : Model
initModel =
    { route = WelcomeRoute
    , faqs =
        [ ( "Why do we need this information?"
          , "Are you a survivor of domestic violence, sexual violence, harassment, stalking or another form of violence against women and girls? You are not alone. Violence against women and girls affects more than 1 in 4 women in the UK at some point in their lives. We believe that many women could be saved a lot of suffering if they are able to find the right help and support at the right time. AVA works to improve the services and support available to women facing violence and abuse. To do this we need your help. Sharing your experiences of the help and support that did and didn’t work for you will help us ensure that we are representing the needs of real women when we talk to government and service providers"
          , False
          )
        , ( "Will I remain anonymous?"
          , "We will not ask you to provide a name, address or email information when asking you about your experiences of help and support, so all of this information will be anonymous. We will ask you if you are happy for us to use quotes from your statements in training or publications, but again this will be anonymous. We will ask you some equalities questions to help us use your story alongside the stories of other women, but again we will not ask for any contact information at this point. \n\nAfter you have told us about your experiences you will be asked if you want to stay in touch with AVA. At this point you can choose to provide some contact details, but they will not be linked to the information you have given about your experiences of help and support. "
          , False
          )
        , ( "What should I do before starting?"
          , "Take care of yourself! We know that telling us about your experiences can be upsetting and traumatic. Please only proceed if you are ready, in a safe place and feel supported enough to do so.  "
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
