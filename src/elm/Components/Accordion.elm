module Components.Accordion exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


accordion : Model -> Html Msg
accordion model =
    section [ class "accordion br2 bg-light-gray" ]
        (List.map qa model.faqs)


qaClass : Bool -> String
qaClass isDisplayed =
    if isDisplayed == True then
        "db"
    else
        "dn"


qa : ( String, String, Bool ) -> Html Msg
qa qatuple =
    let
        ( question, answer, isDisplayed ) =
            qatuple
    in
        section [ class "qa" ]
            [ button [ class "bn question", onClick (ShowAnswer qatuple) ] [ text question ]
            , section [ class <| "answer " ++ qaClass isDisplayed ] [ text answer ]
            ]
