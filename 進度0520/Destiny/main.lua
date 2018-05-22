-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

display.setStatusBar(display.HiddenStatusBar)

local background = display.newImageRect( "background_menu_480x320.png", 480, 320 )
background.x = display.contentCenterX
background.y = display.contentCenterY

local centerX= display.contentCenterX
local centerY= display.contentCenterY

local BFont = require("BitmapFont")
local titleFont = BFont.new("GameTitle.png")

local menuFont = BFont.new("Menu.png")

local composer = require( "composer" )
composer.gotoScene("scene1")

local title = titleFont:newBitmapString(centerX,50,"D-Destiny")
local menuPlay= menuFont:newBitmapString(centerX,centerY*1.2, "Play" )

local menuExit= menuFont:newBitmapString(centerX,centerY*1.6, "Exit" )


