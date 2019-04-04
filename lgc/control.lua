local control = {}

function control:Correct(key)
	if key == "dpup" then
		key = "up"
	elseif key == "dpdown" then
		key = "down"
	elseif key == "dpleft" then
		key = "left"
	elseif key == "dpright" then
		key = "right"
	elseif key == "plus" or key == "=" then
		key = "start"
	elseif key == "minus" or key == "-" then
		key = "select"
	end
	return key
end

function control:Down(key)
	return love.keyboard.isDown(key)
end

return control