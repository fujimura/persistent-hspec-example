import Test.Helper
import qualified Test.DB.OrderSpec

main :: IO ()
main = hspec $ do
  Test.DB.OrderSpec.spec
