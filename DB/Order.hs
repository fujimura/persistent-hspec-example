module DB.Order
  (
  create
  ) where

import Import
import DB

create :: MonadIO m => SqlPersist IO a -> m a
create = undefined
