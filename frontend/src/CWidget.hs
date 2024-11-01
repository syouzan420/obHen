module CWidget (dyChara, imgsrc, elSpace, evElButton, evElButtonH, mkHidden
               , evElNumberPad, dyElTimer, dyElCharaAnime, elTextScroll,elRandom
               ,saveState, loadState, clear, elImage0, elVibration) where

import JSDOM
import qualified JSDOM.Generated.NonElementParentNode as DOM
import qualified JSDOM.Generated.Element as DOM
import JSDOM.Generated.Storage (getItem, removeItem, setItem)
import JSDOM.Types (FromJSString, Storage, ToJSString, JSM, liftJSM)
import JSDOM.Generated.Window (getLocalStorage,getNavigator,getEvent)
import JSDOM.Generated.Navigator (vibrate_)
import JSDOM.Generated.Event (preventDefault)

import Control.Monad.IO.Class (liftIO,MonadIO)
import Control.Monad.Fix (MonadFix)
import qualified Data.Text as T
import qualified Data.Map.Strict as Map
import System.Random (randomRIO)

import Obelisk.Generated.Static (static)

import Reflex.Dom.Core 
  ( text, dynText, el, elAttr, divClass, elAttr', blank, sample
  , (=:), leftmost, elDynAttr, elDynAttr' ,holdDyn, domEvent
  , current, gate, tickLossyFromPostBuildTime, prerender_, prerender 
  , DomBuilder, PerformEvent, TriggerEvent
  , PostBuild, Event, EventName(Click), MonadHold ,Dynamic
  , Performable, TickInfo(..), Prerender
  )

mkHidden :: Bool -> Map.Map T.Text T.Text
mkHidden False = "hidden" =: ""
mkHidden True = mempty

elSpace :: DomBuilder t m => m ()
elSpace = el "p" $ text " "

evElButton :: DomBuilder t m => T.Text -> T.Text -> m (Event t ())
evElButton c s = do
  (e, _) <- elAttr' "button" ("type" =: "button" <> "class" =: c) $ text s
  return $ domEvent Click e

evElButtonH ::
  ( DomBuilder t m
  , PostBuild t m
  ) => Dynamic t Bool -> T.Text -> T.Text -> m (Event t ())
evElButtonH dyB c s = do
  (e, _) <- elDynAttr' "button" dyBHide $ text s
  return $ domEvent Click e
  where mkHidden' False = "hidden" =: "" <> otherAttr
        mkHidden' True = otherAttr
        dyBHide = mkHidden' <$> dyB
        otherAttr = "type" =: "button" <> "class" =: c

evElNumberPad :: DomBuilder t m => Int -> m (Event t T.Text)
evElNumberPad i = do
  divClass "gr" $ do
    evts <- mapM (\n -> (toText n <$) <$> evElNumberButton (toText n)) [1..i]
    return $ leftmost evts 
  where
    evElNumberButton = evElButton "pad" 
    toText = T.pack . show

data Style = Plane | Color StColor | Link deriving stock (Eq, Show)

data StColor = Black | Red | Blue | Yellow deriving stock (Eq, Show)

dyElTimer :: 
  ( DomBuilder t m
  , MonadFix m
  , MonadHold t m
  , MonadIO (Performable m)
  , PerformEvent t m
  , PostBuild t m
  , TriggerEvent t m
  ) => Dynamic t Bool -> m (Dynamic t T.Text)
dyElTimer b = do
  evTime <- tickLossyFromPostBuildTime 1 
  let beBool = current b 
  let evNTime = gate beBool evTime
  let evTimeText = T.pack . show . (+1) . _tickInfo_n <$> evNTime
  holdDyn "start" evTimeText 
  
dyElCharaAnime :: 
  ( DomBuilder t m
  , MonadFix m
  , MonadHold t m
  , MonadIO (Performable m)
  , PerformEvent t m
  , PostBuild t m
  , TriggerEvent t m
  ) => Dynamic t Bool -> m (Dynamic t T.Text)
dyElCharaAnime dyBool = do
  dyTime <- dyElTimer dyBool 
  let dToggle = fmap (\tx -> (tx/="start") &&
                     (rem ((read . T.unpack) tx) 2==(0::Int))) dyTime
  let 
    dNotToggle = not <$> dToggle
    dHide1 = mkHidden <$> dToggle
    dHide2 = mkHidden <$> dNotToggle
  el "p" $ text ""
  elDynAttr "div" dHide1 $ do elChara0; dynText dyTime 
  elDynAttr "div" dHide2 $ do elChara1; dynText dyTime 
  pure dyTime 

elRandom :: (DomBuilder t m, MonadHold t m, Prerender t m) => m Int
elRandom = do
  dyRand <- prerender (return (0::Int)) $ liftIO $ randomRIO (0,4)
  sample (current dyRand)


--elChara :: DomBuilder t m => m ()
--elChara = elAttr "img" ("src" =: $(static "chara0_mid.png")) blank

dyChara :: (DomBuilder t m, PostBuild t m) => Dynamic t (Map.Map T.Text T.Text) -> m ()
dyChara di = elDynAttr "img" di blank

elChara0 :: DomBuilder t m => m ()
elChara0 = elAttr "img" ("src" =: $(static "chara0.png")) blank

elChara1 :: DomBuilder t m => m ()
elChara1 = elAttr "img" ("src" =: $(static "chara1.png")) blank

elImage0 :: DomBuilder t m => m ()
elImage0 = elAttr "img" ("src" =: $(static "title.png")) blank

imgsrc :: [Map.Map T.Text T.Text]
imgsrc = ["src" =: $(static "chara0.png")
         ,"src" =: $(static "chara1.png")
         ,"src" =: $(static "chara2.png")
         ,"src" =: $(static "chara3.png")
         ,"src" =: $(static "chara4.png")
         ,"src" =: $(static "chara5.png")
         ,"src" =: $(static "chara6.png")
         ,"src" =: $(static "chara7.png")
         ,"src" =: $(static "chara8.png")
         ]

elTextScroll :: (DomBuilder t m, Prerender t m) => m ()
elTextScroll = prerender_ blank $ do
  doc <- currentDocumentUnchecked
  scrollText <- DOM.getElementById doc ("wkText" :: String)
  case scrollText of
    Just scrT -> DOM.scrollBy scrT (-20) 0 
    Nothing -> return ()
  
elVibration :: (DomBuilder t m, Prerender t m) => m ()
elVibration = prerender_ blank $ do
  win <- currentWindowUnchecked
  ev <- getEvent win
  nav <- getNavigator win
  preventDefault ev
  vibrate_ nav 150
  
getLocalStorageUnchecked :: JSM Storage
getLocalStorageUnchecked = currentWindowUnchecked >>= getLocalStorage

save :: ToJSString a => T.Text -> a -> JSM ()
save key val = getLocalStorageUnchecked >>= \ls -> setItem ls key val

load :: FromJSString a => T.Text -> JSM (Maybe a)
load key = getLocalStorageUnchecked >>= flip getItem key

clear :: T.Text -> JSM ()
clear key = getLocalStorageUnchecked >>= flip removeItem key

saveState :: (DomBuilder t m, Prerender t m) => T.Text -> m ()
saveState sd = prerender_ blank $ liftJSM $ save "gameState" sd 

loadState :: (DomBuilder t m, Prerender t m) =>  m (Dynamic t (Maybe T.Text)) 
loadState  = prerender (return Nothing) $ liftJSM $ load "gameState" 
  
