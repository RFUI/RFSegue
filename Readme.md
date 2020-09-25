# RFSegue - Missing features for UIStoryboardSegue

[![Build Status](https://img.shields.io/travis/RFUI/RFSegue.svg?style=flat-square&colorA=333333&colorB=6600cc)](https://travis-ci.org/RFUI/RFSegue)
[![Codecov](https://img.shields.io/codecov/c/github/RFUI/RFSegue.svg?style=flat-square&colorA=333333&colorB=6600cc)](https://codecov.io/gh/RFUI/RFSegue)
[![CocoaPods](https://img.shields.io/cocoapods/v/RFSegue.svg?style=flat-square&colorA=333333&colorB=6600cc)](https://cocoapods.org/pods/RFSegue)

<base href="//github.com/RFUI/RFSegue/blob/master/" />

*English* [简体中文 :cn:](Readme~zh-hans.md)

## CocoaPods Install

```ruby
pod 'RFSegue'
```

Specify develop branch to install the lastest version:

```ruby
pod 'RFSegue',
    :git => 'https://github.com/RFUI/RFSegue.git',
    :branch => 'develop',
    :subspecs => ['Async', 'Return', 'Present']
```

## Version

v3 was designed when iOS 5 just came out. The architecture is outdated and should be deprecated. Checkout v3 branch for legacy usage.

```ruby
pod 'RFSegue', :git => 'https://github.com/RFUI/RFSegue.git', :branch => 'v3'
```

## Asynchronous segue

By using RFAsynchronousSegue, you can perform or cancel an seuge asynchronous.

## Return buttons

Using segue we can transit between view controllers conveniently from the outside in. But how to return? Generally we must write some code. We had subclassed `UIButton` and `UIBarButtonItem` to make this as convenient as segue. For an `UIButton`, you just change it’c class, no more operate! You need drag `masterViewController` IBOutlet to current view controller if there are `UIBarButtonItem`. IBAction or addTarget no longer needed.

By implement `RFSegueReturnDelegate` protrol, you could control whether the return should be executed or not.
