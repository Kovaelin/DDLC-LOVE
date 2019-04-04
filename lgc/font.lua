local font = {}

function font.Load(font,size)
	return love.graphics.newFont(font,size)
end

function font.Set(font,size)
	love.graphics.setFont(font,size)
end

function font.Unload(font)
	
end

font.Print = love.graphics.print

function font.PrintWrap(...)
	args = {...}
	fontPrint(...)
end

return font