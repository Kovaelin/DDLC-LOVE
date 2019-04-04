require "lgc.lgc"
lovelyMoon = require "libraries.lovelyMoon"
json = require "libraries.json"
states = {}

function love.load()
	getSys = {}
	getSys.OS, getSys.Device = love.system.getOS()
	
	if getSys.OS == "Windows" then
		love.window.setMode(1280, 720)
		love.keyboard.setTextInput(false)
	end
	
	states.menu = lovelyMoon.addState("states.splash", "splash")
	lovelyMoon.enableState("splash")
end

function love.draw()
	lovelyMoon.events.draw()
end

function love.update(dt)
	lovelyMoon.events.update(dt)
end

function love.keypressed(key, unicode)
	key = control.Correct(key)
	lovelyMoon.events.keypressed(key, unicode)
end

function love.keyreleased(key, unicode)
	key = control.Correct(key)
	lovelyMoon.events.keyreleased(key, unicode)
end

function love.mousepressed(x, y, button)
	lovelyMoon.events.mousepressed(x, y, button)
end

function love.mousereleased(x, y, button)
	lovelyMoon.events.mousereleased(x, y, button)
end

function love.gamepadpressed(joy, key)
	love.keypressed(key)
end

function love.gamepadreleased(joy, key)
	love.keyreleased(key)
end