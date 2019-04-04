local data = {}

function data:Save(file,filedata)
	love.filesystem.write(file,filedata)
end

function data.Load(file)
	local filedata = loadstring(love.filesystem.read(file))
	return filedata
end

return data