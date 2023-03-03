import "greeting"

local gfx <const> = playdate.graphics
local font = gfx.font.new('font/Mini Sans 2X')

local greeting = greeting(3, -1)

local function loadGame()
	playdate.display.setRefreshRate(50)
	gfx.setFont(font)
end

local function updateGame()
	greeting:update()
end

local function drawGame()
	gfx.clear()
	greeting:draw()
end

loadGame()

function playdate.update()
	updateGame()
	drawGame()
	playdate.drawFPS(5,5)
end