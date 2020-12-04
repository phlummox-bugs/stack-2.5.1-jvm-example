{-# LANGUAGE OverloadedStrings #-}

module Lib
    ( tryJavaFunc
    ) where

import Data.Int
import qualified Data.Text as Text
import Data.Text (Text)
import Language.Java


tryJavaFunc :: IO Double
tryJavaFunc =
  withJVM [] $ do
    jstr <- reflect ("1.2345" :: Text)
    callStatic "java.lang.Double" "parseDouble" [coerce jstr]
