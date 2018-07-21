{-# LANGUAGE CApiFFI #-}
module LuaMusl where

import Foreign.C (CInt (CInt))

foreign import capi "lua-musl.h test_errerr" test_errerr :: IO CInt
