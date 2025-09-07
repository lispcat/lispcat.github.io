{-# LANGUAGE OverloadedStrings #-}

module Main where

import Hakyll

main :: IO ()
main = hakyll $ do
  match "docs/index.html" $ do
    route idRoute
    compile $
      getResourceBody >>= relativizeUrls
