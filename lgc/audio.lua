local audio = {}

audio.Ext = ".ogg"
audio.SFX = {}

function audio.Load(source,type,channel)
	--type
	if type == "BGM" then
		type = "stream"
	else
		type = "static"
	end
	
	return love.audio.newSource(source..self.Ext,type)
end

function audio.Unload(source,channel)
	source:stop()
	if getSys.Device == "Vita" then
		if channel then
			if audioSFX[channel] then Sound.close(audioSFX[channel]) end
		else
			if source then Sound.close(source) end
		end
	end
	source = nil
	collectgarbage()
end

function audio.Play(source)
	source:play()
end

return audio