local lu = require('lib/luaunit')

TestFmt = {}

function TestFmt:setUp()
  self.fmt = require 'lua/solarized/fmt'
end

function TestFmt:tearDown()
  self.fmt = nil
  package.loaded['lua/solarized/fmt'] = nil
end

function TestFmt:test()
  local want = 'cterm=NONE,italic,bold'
  lu.assertEquals(self.fmt('italic', 'bold'), want, 'long attr failed')
  lu.assertEquals(self.fmt('i', 'b'), want, 'alias attr failed')
end

function TestFmt:testDisable()
  local want = 'cterm=NONE,bold'
  self.fmt:disable('italic')
  lu.assertEquals(self.fmt('italic', 'bold'), want, 'long attr failed')
  lu.assertEquals(self.fmt('i', 'b'), want, 'alias attr failed')
end

function TestFmt:testDisableMany()
  local want = 'cterm=NONE'
  self.fmt:disable('italic', 'bold')
  lu.assertEquals(self.fmt('italic', 'bold'), want, 'long attr failed')
  lu.assertEquals(self.fmt('i', 'b'), want, 'alias attr failed')
end

os.exit(lu.LuaUnit.run())
