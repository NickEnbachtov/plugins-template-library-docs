# SimpleAI.newAI()

|                      | &nbsp; 
| -------------------- | ---------------------------------------------------------------
| __Type__             | [function](http://docs.coronalabs.com/api/type/Function.html)
| __Library__          | [SimpleAI.*](Readme.markdown)
| __Return value__     | Physical object
| __Keywords__         | object, AI, artificial intelligence
| __See also__         | [Documentation and code examples](http://simple-ai.blogspot.com)


## Overview

This function takes parameters and returns an object of artificial intelligence.


## Syntax

	SimpleAI.newAI( group, img, x, y )
	SimpleAI.newAI( group, img, x, y, ai_type )
	SimpleAI.newAI( group, img, x, y, ai_type, spriteObj )

##### group <small>(required)</small>
_[GroupObject](https://docs.coronalabs.com/api/type/GroupObject/index.html)._ The name of the group object in which to insert the AI object.

##### img <small>(required)</small>
_[String](http://docs.coronalabs.com/api/type/String.html)._ The name of the image file to load, relative to `baseDir` (or `system.ResourceDirectory` by default).

##### x <small>(required)</small>
_[Number](https://docs.coronalabs.com/api/type/Number.html)._ The x coordinate of the AI object.

##### y <small>(required)</small>
_[Number](https://docs.coronalabs.com/api/type/Number.html)._ The y coordinate of the AI object.

##### ai_type <small>(optional)</small>
_[String](http://docs.coronalabs.com/api/type/String.html)._ The name of the AI type, wich determines the specific behavior of AI. Available options: "patrol" (default), "guard", "boss". Default value is "patrol" if the parameter is not provided.

##### spriteObj <small>(optional)</small>
_[SpriteObject](https://docs.coronalabs.com/api/type/SpriteObject/index.html)._ Reference to a sprite object created with `display.newSprite()`. This is only required if you intend to create an object from a sprite object instead of static image. Default value is `nil` if the parameter is not provided.


## Examples

``````lua
local SimpleAI = require 'plugin.SimpleAI'

local enemy = SimpleAI.newAI(mainGroup, "snailWalk1.png", display.contentWidth*0.5, display.contentHeight-300)
``````
