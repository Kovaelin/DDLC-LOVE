local image = {}

function image.Load(drawable)
	return love.graphics.newImage(drawable)
end

function image.Unload(drawable)
	if getSys.Device == "Vita" then
		if drawable then Graphics.freeImage(drawable) end
	end
	drawable = nil
	collectgarbage()
end

function image.Draw(drawable)
	love.graphics.draw(drawable)
end

return image