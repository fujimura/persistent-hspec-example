module DB.Order
  (
  create
  ) where

import Import
import DB
import qualified Database.Persist.Sqlite as P
import Data.Text as T

create :: MonadIO m => String -> Int -> m (Key SqlPersist (Order))
create name price = do
  runDB $ P.insert $ Order name price
