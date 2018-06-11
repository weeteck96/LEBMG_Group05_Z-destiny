-----------------------------------------------------------------------------------------
--
--pause.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local composer = require( "composer" )

local scene = composer.newScene()

local restart_button

local background

-- "scene:create()"
function scene:create( event )

    local sceneGroup = self.view

end

local function onTouchRestartButton( event )
    if event.phase == "ended" then
        composer.gotoScene( "scene1" )
    end
end

function scene:create( event )

    local sceneGroup = self.view

background = display.newImageRect( "option.jpg", 360, 240 )
background.x = display.contentCenterX
background.y = display.contentCenterY

end

-- "scene:show()"
function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then

        print("Now we are in scene3.lua!")
    elseif ( phase == "did" ) then

    end
end


-- "scene:hide()"
function scene:hide( event )

    local sceneGroup = self.view
    local phase = event.phase
    local parent = event.parent

    if ( phase == "will" ) then

        parent:resumeGame()
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

composer.hideOverlay( "fade", 400 )

return scene
