-----------------------------------------------------------------------------------------
--
--restart.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local composer = require( "composer" )

local scene = composer.newScene()

local background = display.newImageRect( "restart.png", 480, 320 )
background.x = display.contentCenterX
background.y = display.contentCenterY

local centerX= display.contentCenterX
local centerY= display.contentCenterY

local restart_button

local function onTouchrestartButton( event )
    if event.phase == "ended" then
        composer.gotoScene( "scene1" )
    end
end

function scene:create( event )

    local sceneGroup = self.view


    restart_button = display.newRect( 100 ,100, 110, 30 )


    sceneGroup:insert( restart_button )


    restart_button.x=240
    restart_button.y=255

    restart_button:addEventListener( "touch", onTouchrestartButton )

end

-- "scene:show()"
function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then

    elseif ( phase == "did" ) then

    end
end


-- "scene:hide()"
function scene:hide( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then

    elseif ( phase == "did" ) then
    end
end


-- "scene:destroy()"
function scene:destroy( event )

    local sceneGroup = self.view


end

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

return scene
