# PickerCountry

[![CI Status](http://img.shields.io/travis/Nazish Ali/PickerCountry.svg?style=flat)](https://travis-ci.org/Nazish Ali/PickerCountry)
[![Version](https://img.shields.io/cocoapods/v/PickerCountry.svg?style=flat)](http://cocoapods.org/pods/PickerCountry)
[![License](https://img.shields.io/cocoapods/l/PickerCountry.svg?style=flat)](http://cocoapods.org/pods/PickerCountry)
[![Platform](https://img.shields.io/cocoapods/p/PickerCountry.svg?style=flat)](http://cocoapods.org/pods/PickerCountry)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

    PickerCountry for iOS supports iOS 8.x, iOS 9.x and iOS 10

## Steps to get started

```ruby
import PickerCountry 

Button on which you want to create code picker, add the code


func buttonAction(sendr : UIButton)  {
     let vc = CodeViewController() 
     self.presentViewController(vc, animated: true, completion: nil)
}

add the notification center add observer

 
NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(YourController.countrySelectionFunction), name: "SelectCountry", object: nil)

func countrySelectionFunction(sender : NSNotification)  {
         print(sender.userInfo)
}
```


## Installation

PickerCountry is available through [CocoaPods](http://cocoapods.org). PickerCountry for iOS supports iOS 8.x, iOS 9.x and iOS 10. To install
it, simply add the following line to your Podfile:

```ruby
# Comment this line if you're not using Swift and don't want to use dynamic frameworks
use_frameworks!

pod 'PickerCountry'
```

## Author

Nazish Ali, nazishali6@gmail.com

## License

PickerCountry is available under the MIT license. See the LICENSE file for more info.
