module Test.DB.OrderSpec ( spec ) where
import Test.Helper

spec :: Spec
spec = do
 describe "Order.create" $ do
   describe "when total price is $99" $ do
     it "should create new record of order" $ do
       pending "not implemented"
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
