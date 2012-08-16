{-# LANGUAGE QuasiQuotes, TemplateHaskell, TypeSynonymInstances #-}
{-# LANGUAGE TypeFamilies, OverloadedStrings #-}
{-# LANGUAGE GADTs, FlexibleContexts #-}
module DB where

import Import
import Database.Persist.TH
import Data.Text (Text)

share [mkPersist sqlSettings, mkMigrate "migrateAll"] [persist|
Order
    name  String
    price Int
    deriving Show Eq
|]

runDB :: MonadIO m => SqlPersist IO a -> m a
runDB action = liftIO $ withSqliteConn "test.sqlite" $ runSqlConn action
