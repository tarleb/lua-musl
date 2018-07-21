#include "lua.h"
#include "lauxlib.h"
#include "lua-musl.h"

int test_errerr()
{
  lua_State *L = luaL_newstate();
  lua_pushnil(L);
  lua_pushnil(L);
  int result = lua_pcall(L, 0, 0, -2);
  lua_close(L);
  return result;
}
