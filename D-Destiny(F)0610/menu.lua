-----------------------------------------------------------------------------------------
--
-- menu.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local composer = require( "composer" )

local scene = composer.newScene()

local start_button
local exit_button
local background
local backgroundMusic = audio.loadStream( "menu music.mp3" )

local backgroundMusicChannel = audio.play( backgroundMusic, { channel=1, loops=-1, fadein=5000 } )

local function onTouchStartButton( event )
    if event.phase == "ended" then
        composer.gotoScene( "scene1" )
    end
end

local function onTouchExitButton( event )
    if event.phase == "ended" then
        composer.gotoScene( "scene2" )
    end
end


function scene:create( event )

    local sceneGroup = self.view


	background = display.newImageRect( "background_menu_480x320.png", 480, 320 )
	background.x = display.contentCenterX
	background.y = display.contentCenterY

	start_button = display.newImageRect( "btn.png", 200 ,50 )
	start_button.x = 255
	start_button.y = 200
	start_button = display.newRect( 100 ,100, 110, 30 )
    exit_button = display.newImageRect( "btn1.png", 200 ,50 )
	exit_button.x = 255
	exit_button.y = 262
	exit_button = display.newRect( 100 ,100, 110, 30 )

	start_button.x = 255
	start_button.y = 200
	exit_button.x = 255
	exit_button.y = 262

    sceneGroup:insert( start_button )
    sceneGroup:insert( exit_button )

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
