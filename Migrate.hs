{-# LANGUAGE OverloadedStrings #-}

import Control.Monad
import Control.Exception
import Database.Persist.Sqlite

import DB

main :: IO ()
main = do
    runDB $ runMigration migrateAll
