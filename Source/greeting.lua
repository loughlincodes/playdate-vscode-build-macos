import "CoreLibs/graphics"
import "CoreLibs/object"

local gfx <const> = playdate.graphics
local snd <const> = playdate.sound

local beep = snd.synth.new(snd.kWaveSquare)

class("greeting").extends()

function greeting:init(xspeed, yspeed)
    self.label = {
		x = 120,
		y = 120,
		xspeed = xspeed,
		yspeed = yspeed,
		width = 150,
		height = 20
	}
end

function greeting:swapColors()
	if (gfx.getBackgroundColor() == gfx.kColorWhite) then
		gfx.setBackgroundColor(gfx.kColorBlack)
		gfx.setImageDrawMode("inverted")
	else
		gfx.setBackgroundColor(gfx.kColorWhite)
		gfx.setImageDrawMode("copy")
	end
end

function greeting:update()

	local label = self.label;
	local swap = false
	
	if (label.x + label.width >= 400 or label.x <= 0) then
    label.xspeed = -label.xspeed;
		beep:playNote("Cb3", .1, .05);
		swap = true
  end

  if (label.y + label.height >= 240 or label.y <= 0) then
    label.yspeed = -label.yspeed;
		beep:playNote("Eb3", .1, .05);
		swap = true
	end

	if (swap) then
		self:swapColors()
	end

	label.x = label.x + label.xspeed
	label.y = label.y + label.yspeed
end

function greeting:draw()
    local label = self.label;
    gfx.drawTextInRect("GET CODING...", label.x, label.y, label.width, label.height);
end