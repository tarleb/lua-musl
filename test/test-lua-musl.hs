import LuaMusl
import Test.Tasty (defaultMain, testGroup)
import Test.Tasty.HUnit (testCase, assertEqual)

main :: IO ()
main = defaultMain $ testGroup "lua-musl"
  [ testCase "check for crash" $
    assertEqual "LUA_ERRERR has value 6" 6 =<< test_errerr
  ]
