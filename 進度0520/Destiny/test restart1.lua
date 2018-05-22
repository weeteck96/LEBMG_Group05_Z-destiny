-----------------------------------------------------------------------------------------
--
--restart.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local composer = require( "composer" )
local scene = composer.newScene()

-- background

local background = display.newImageRect( "restart.jpg", 480, 320 )
background.x = display.contentCenterX
background.y = display.contentCenterY


function touchScreen(event)
	if event.phase == "began" then
		composer.gotoScene("scene1")
		background:addEventListener("touch", touchScreen)
	end
end


function scene:exitScene(event)
	background:removeEventListener("touch", start)
end

function scene:destroyScene(event)

end


scene:addEventListener("createScene", scene)
scene:addEventListener("enterScene", scene)
scene:addEventListener("exitScene", scene)
scene:addEventListener("destroyScene", scene)

return scene
