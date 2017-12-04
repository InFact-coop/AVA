module State exposing (..)

import Components.TooltipExtract exposing (..)
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
    , tooltips =
        [ ( 1, "This can be formal services and support like the police, social services, a doctor, helpines or local women’s services or informal support from friends, family, neighbours or someone like your hairdresser.", False )
        , ( 2
          , "Please tell us who helped you and how they were helpful."
          , False
          )
        , ( 3
          , "Please tell us who did not help you and why they were unhelpful."
          , False
          )
        , ( 4, "Please tell us who would you have liked to have got help from and what kind of support would have helped more?", False )
        , ( 5, "Please select as many of the buttons below to tell us a bit more about the challenges you faced.", False )
        , ( 6, "Please use this space if you want to tell us anything else you want to about your experience.", False )
        , ( 7, "It is also powerful to have direct asks when we are trying to influence policy", False )
        , ( 8, "We use quotes from real women when talking to government and services as they add to the truth and impact of what we are saying. We would make sure that you could not be identified through any quotes we used.", False )
        , ( 9, "Your answers to these questions will help us use your experiences alongside those of other women. Please choose an option from each of the questions below. They all include a ‘Prefer not to say’ option to select if you would rather not answer a particular question. Many questions also include an ‘other - please specify’ option which enables you to type in an answer if none of the options given apply to you.", False )
        , ( 10, "We send our newsletter out with regular updates which cover what we are doing, the training we offer, jobs and opportunities and news about violence against women and girls in the UK.", False )
        , ( 11, "Would you like to continue to be involved in our work to create positive change for women facing violence and abuse in the UK? Then become part of our expert by experience network so that you can carry on influencing our work through polls and surveys. As an expert by experience, we will only ever contact you by email and it will be no more than once a month.", False )
        , ( 12, "Your answers to these questions will help us use your experiences alongside those of other women. Please choose an option from each of the questions below. They all include a ‘Prefer not to say’ option to select if you would rather not answer a particular question. Many questions also include an ‘other - please specify’ option which enables you to type in an answer if none of the options given apply to you.", False )
        ]
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

        ToggleTooltip ( int, tool, isToggled ) ->
            ( { model | tooltips = List.map (\n -> restructureTooltipList n ( int, tool, isToggled )) model.tooltips }, Cmd.none )


restructureTooltipList : Tooltip -> Tooltip -> Tooltip
restructureTooltipList ( mappedId, mappedtt, mappedtoggle ) ( selectedId, selectedtt, selectedtoggle ) =
    if mappedId == selectedId then
        ( mappedId, mappedtt, not selectedtoggle )
    else
        ( mappedId, mappedtt, False )


findToggledQa : ( String, String, Bool ) -> ( String, String, Bool ) -> ( String, String, Bool )
findToggledQa ( mappedQ, mappedA, isMappedToggled ) ( selectedQ, selectedA, isSelectedToggled ) =
    if selectedQ == mappedQ then
        ( selectedQ, selectedA, not isSelectedToggled )
    else
        ( mappedQ, mappedA, isMappedToggled )
