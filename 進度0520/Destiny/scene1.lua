-----------------------------------------------------------------------------------------
--
-- scene1.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local composer = require( "composer" )

local scene = composer.newScene()


local start_button

local exit_button


local function onTouchStartButton( event )
    if event.phase == "ended" then
        composer.gotoScene( "scene2" )
    end
end

local function onTouchExitButton( event )
    if event.phase == "ended" then
        composer.gotoScene( "scene3" )
    end
end

function scene:create( event )

    local sceneGroup = self.view

    start_button = display.newRect( 100 ,100, 110, 30 )
    exit_button = display.newRect( 100 ,100, 110, 30 )


    sceneGroup:insert( start_button )
    sceneGroup:insert( exit_button )

    start_button.x=240
    start_button.y=190
    exit_button.x=240
    exit_button.y=255

    start_button:addEventListener( "touch", onTouchStartButton )
    exit_button:addEventListener( "touch", onTouchExitButton )
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

