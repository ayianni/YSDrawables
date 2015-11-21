# YSDrawables

[![CI Status](http://img.shields.io/travis/Alexander Yianni/YSDrawables.svg?style=flat)](https://travis-ci.org/Alexander Yianni/YSDrawables)
[![Version](https://img.shields.io/cocoapods/v/YSDrawables.svg?style=flat)](http://cocoapods.org/pods/YSDrawables)
[![License](https://img.shields.io/cocoapods/l/YSDrawables.svg?style=flat)](http://cocoapods.org/pods/YSDrawables)
[![Platform](https://img.shields.io/cocoapods/p/YSDrawables.svg?style=flat)](http://cocoapods.org/pods/YSDrawables)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

##Purpose

YSDrawables is an iOS component intended to be used for IBDesignables and IBInspectables along with tools such as PaintCode

##Usage
Extend the two included classes YSDrawableButton or YSDrawableView.

Both of these have an IBInspectable fill color which is intended as the main color for the shape to be drawn
YSDrawnableButton also includes a selectedFillColor which is used to change the fill color when the button is tapped by the user

A couple of examples are provided in the demo both with default colours and overridden.
An example is also shown by programmatically creating a view.

## Requirements

## Installation

YSDrawables is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "YSDrawables"
```

## Author

Alexander Yianni, alex.yianni@yianni-software.com

## Kudos
Kudos to Ashton Williams and Vlas Voloshin for the UIImage and NSBundle categories for Designables
https://github.com/Ashton-W/devworld-designables

## License

YSDrawables is available under the MIT license. See the LICENSE file for more info.
