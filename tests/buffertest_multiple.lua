local Buffer = require( "dbuffer" )

local bufftab = { [1] = Buffer:new(15), [2] = Buffer:new(30), [3] = Buffer:new(15) }

bufftab[1].favor = MID_FAVOR
bufftab[3].favor = BOT_FAVOR

bufftab[1]:parse( "H:10 M:10 V:10" )
bufftab[2]:parse( "You are standing a really big fucking room. You think that it is here where you will be tested. And as code, I am impressed that you are right. I really need to make sure this is a very large block of text to give us plenty of height." )
bufftab[3]:parse( "This.\nIs. A. Test." )

--for i, ln in pairs( bufftab[2].lines ) do
  -- print( i .. ": " .. ln )
--end

print( Buffer.buffers_to_string( bufftab, "%s|%s|%s" ) )
