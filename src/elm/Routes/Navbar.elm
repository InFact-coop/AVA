module Routes.Navbar exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


navbar : Model -> Html Msg
navbar model =
    ul [ class "dn ma0 bg-green w-100 pa2" ]
        navbarContent


navbarLink : ( String, String ) -> Html Msg
navbarLink ( linkStr, name ) =
    li [ class "list dib ma3" ] [ a [ class "link dim white b", href ("/#" ++ linkStr) ] [ text name ] ]


navbarContent : List (Html Msg)
navbarContent =
    List.map navbarLink [ ( "welcome", "Welcome" ), ( "intro", "Intro" ), ( "aboutYou", "About You" ), ( "journey", "Journey" ), ( "government", "Government" ), ( "disclosure", "Disclosure" ), ( "thanks", "Thank You" ) ]
