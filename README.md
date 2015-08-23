# DOOgre

[![Version](https://img.shields.io/cocoapods/v/DOOgre.svg?style=flat)](http://cocoapods.org/pods/DOOgre)
[![License](https://img.shields.io/cocoapods/l/DOOgre.svg?style=flat)](http://cocoapods.org/pods/DOOgre)
[![Platform](https://img.shields.io/cocoapods/p/DOOgre.svg?style=flat)](http://cocoapods.org/pods/DOOgre)  
Ogre's are like onions and so are views. They have (CA)Layers!

<p align="center"><img src="https://github.com/dostrander/DOOgre/blob/master/ogres-are-like-onion.gif"/></p>

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Basic Overview  
The layers are meant to be base layers unless otherwise specified.  

The best way to use it is to set the `+layerClass` on the view you want to affect:

```objc
+ (Class)layerClass 
{
    return [DOCircleLayer class];
}
```
Layers effects:  

*   Circles:
	* This will cause funky layouts if you animate `CALayer.bounds` directly. Fix coming...
* 	Animatable Border 
	*  (coming soon)
* 	Circle borders 
	*   (coming soon)
	
There are layers for circles and borders. If you want to add one go ahead and submit a pull request! :)


## Installation

DOOgre is available through [CocoaPods](http://cocoapods.org). To install it, simply add the following line to your Podfile:

```ruby
pod 'DOOgre'
```

## Author

Derek Ostrander, djostran@gmail.com

## License

DOOgre is available under the MIT license. See the LICENSE file for more info.
