# SimpleAI: Plugin API Docs

|                      | &nbsp; 
| -------------------- | ---------------------------------------------------------------
| __Type__             | [Library](http://docs.coronalabs.com/api/type/Library.html)
| __Corona Store__     | [SimpleAI](http://store.coronalabs.com/plugin/SimpleAI)
| __Keywords__         | AI, artificial intelligence, game logic
| __See also__         | [Documentation and code examples](http://simple-ai.blogspot.com)

## Overview

The SimpleAI plugin can be used in your [Corona](https://coronalabs.com/products/corona-sdk/) project. It enables you to create an object with specific behavior (artificial intelligence), which can contact (fire, visual contact, collision) with the object having type "player" (and other objects if needed).

## Syntax

	local SimpleAI = require "plugin.SimpleAI"

### Functions

##### [SimpleAI.newAI()](newAI.markdown)

## Project Configuration

### Corona Store Activation

In order to use this plugin, you must activate the plugin at the [Corona Store](http://store.coronalabs.com/plugin/SimpleAI).


### SDK

When you build using the Corona Simulator, the server automatically takes care of integrating the plugin into your project. 

All you need to do is add an entry into a `plugins` table of your `build.settings`. The following is an example of a minimal `build.settings` file:

``````
settings =
{
	plugins =
	{
		-- key is the name passed to Lua's 'require()'
		["plugin.SimpleAI"] =
		{
			-- required
			publisherId = "com.simpleai",
		},
	},		
}
``````

### Enterprise

If you have activated this plugin, you can download this plugin from the corresponding plugin page in the [Corona Store](http://store.coronalabs.com/plugin/SimpleAI).


## Resources

### Sample Code

You can access sample code [here](SampleCode.lua).

Other code examples available [here](http://simple-ai.blogspot.com/#code_examples).

### Support

More support is available from the Nikolay Yenbakhtov team:

* [E-mail](mailto://enbahtov@gmail.com)
* [Forum](https://forums.coronalabs.com/topic/63905-simple-ai-for-corona-sdk)
* [Plugin Publisher](http://simple-ai.blogspot.com)


## Compatibility

| Platform                     | Supported
| ---------------------------- | ---------------------------- 
| iOS                          | Yes
| Android                      | Yes
| Android (GameStick)          | Yes
| Android (Kindle)             | Yes
| Android (NOOK)               | Yes
| Android (Ouya)               | Yes
| Mac App                      | Yes
| Win32 App                    | Yes
| Windows Phone 8              | Yes
| Corona Simulator (Mac)       | Yes
| Corona Simulator (Win)       | Yes

