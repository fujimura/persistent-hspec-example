module Test.DB.OrderSpec ( spec ) where
import Import
import DB
import qualified DB.Order
import qualified Database.Persist.Sqlite as P
import Test.Helper

spec :: Spec
spec = do
 describe "Order.create" $ do
   describe "when total price is $99" $ do
     it "should create new record of order" $ do
       orderId <- DB.Order.create "El Barrio" 2000
       order <- runDB $ P.get orderId
       (orderName $ fromJust order)  `shouldBe` "El Barrio"
       (orderPrice $ fromJust order) `shouldBe` 2000

     it "should not issue coupon" $ do
       pending "not implemented"

   describe "when total price is $100" $ do
     it "should create new record of order" $ do
       pending "not implemented"
     it "should issue coupon" $ do
       pending "not implemented"

   describe "when total price is $101" $ do
     it "should create new record of order" $ do
       pending "not implemented"
     it "should issue coupon" $ do
       pending "not implemented"
