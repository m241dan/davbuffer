Buffer = require( "dbuffer" )

width = 25
astring = "this #rjust has \r\nto be a #nlong string, eeeeeeeeeeeeee#neeeeeeeeeeee#r#beeeeeeeeeeeeeeeeeeeeeeeee#deeeeeeeeeeeeeeeeeeeeeeeeeeeeee prefer#dably\r\n one t#nhat is about... oh I #n#r#zdunno, 30+ char#na#tcters\r\n\r\n long."

print( "Test one, with color.\nEach line should have an extra character on the end for each color tag:\n" )

a = Buffer:new( width )
assert( a:parse( astring ) )
print( tostring( a ) )

print( "\nTest two, should be a nice even square block:\n" )

bstring = "this just has \r\nto be a long string, eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee preferably\r\n one that is about... oh I dunno, 30+ characters\r\n\r\n long."

b = Buffer:new( width )
assert( b:parse( bstring ) )
print( tostring( b ) )

print( "\nTest three, just makes sure its rendering into lines:\n" )

for i, ln in pairs( b.lines ) do
   print( i .. ": " .. ln )
end
