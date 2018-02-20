module App exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import FontAwesome as Fa exposing (..)
import Color exposing (Color)


---- MODEL ----


type alias Model =
    String


init : ( Model, Cmd Msg )
init =
    ( "", Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    div [ class "wrapper" ]
        [ div [ class "content" ]
            [ img [ class "logo", src "./static/media/logo.svg" ] []
            , img [ class "name", src "./static/media/hughmp.svg" ] []
            ]
        , div [ class "titles" ]
            [ p [] [ text "Full Stack Engineer @ ", a [ href "https://www.bloomberg.com" ] [ text "Bloomberg LP" ] ]
            , p [] [ text "Chief Technology Officer @ ", a [ href "https://www.thementawaiislands.com" ] [ text "Matungou, Surf Mentawai" ] ]
            , p [] [ text "Founder & Director @ ", a [ href "https://www.hughmp.com" ] [ text "HMP Enterprises LTD" ] ]
            , p [] [ text "Owner & Director @ ", a [] [ text "St. Abbeville Freehold Co. LTD" ] ]
            ]
        , div [ class "links" ]
            [ a [ href "https://www.linkedin.com/in/hughmp" ] [ Fa.linkedin Color.white 30 ]
            , a [ href "https://www.instagram.com/hughjmp" ] [ Fa.instagram Color.white 30 ]
            , a [ href "https://www.facebook.com/HughMP" ] [ Fa.facebook_f Color.white 30 ]
            , a [ href "https://github.com/hughmp" ] [ Fa.github Color.white 30 ]
            , a [ href "https://blockchain.info/address/17PgDu3EfGcNTt9MWQcAFaRjarVECAG1o9" ] [ Fa.bitcoin Color.white 30 ]
            , a [ href "https://gist.github.com/hughmp/1010b48d9778f305cdbb6439dc5ba369" ] [ Fa.key Color.white 30 ]
            , a [ href "https://goo.gl/d7oMVD" ] [ Fa.file_text_o Color.white 30 ]
            , a [ href "mailto:hughjmp@gmail.com" ] [ Fa.envelope_o Color.white 30 ]
            ]
        ]



---- PROGRAM ----


main : Program Never Model Msg
main =
    Html.program
        { view = view
        , init = init
        , update = update
        , subscriptions = \_ -> Sub.none
        }
