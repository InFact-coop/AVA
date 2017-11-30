module Components.Accordion exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


accordion : Model -> Html Msg
accordion model =
    section [ class "accordion br2 bg-light-gray ph2 mv3 mh2" ]
        (List.map
            qa
            model.faqs
        )


qaClass : Bool -> String
qaClass isDisplayed =
    if isDisplayed == True then
        "db"
    else
        "dn"


openCloseTag : Bool -> String
openCloseTag isDisplayed =
    if isDisplayed == True then
        "x "
    else
        "+ "


qa : ( String, String, Bool ) -> Html Msg
qa qatuple =
    let
        ( question, answer, isDisplayed ) =
            qatuple
    in
        section [ class "qa bb b--mid-gray pa2" ]
            [ button
                [ class "bn f4 bg-inherit pa0 b tl flex justify-around mb1", onClick (ShowAnswer qatuple) ]
                [ span [ class "mid-gray mr1" ]
                    [ text <| openCloseTag isDisplayed ]
                , span [ class "dark-gray pr2" ] [ text question ]
                ]
            , section [ class <| "answer " ++ qaClass isDisplayed ] [ text answer ]
            ]
