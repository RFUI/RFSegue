# RFSegue - 提供 UIStoryboardSegue 缺失的功能

[![Build Status](https://travis-ci.org/RFUI/RFSegue.svg?branch=master)](https://travis-ci.org/RFUI/RFSegue)

<base href="//github.com/RFUI/RFSegue/blob/master/" />

[English :us:](Readme.md) *简体中文*

## CocoaPods Install

```ruby
pod 'RFSegue', :git => 'https://github.com/RFUI/RFSegue.git'
```

## Version

v3 设计之初是 iOS 5 刚出来的时候，架构太落时而废弃。使用旧版请检查 v3 分支。

```ruby
pod 'RFSegue', :git => 'https://github.com/RFUI/RFSegue.git', :branch => 'v3'
```

## 异步 segue

RFAsynchronousSegue 支持 segue 的异步执行或取消。

## 返回按钮

通过 segue 我们可以便捷地在视图间从外向内跳转，但是如何返回呢？通常只有手写代码。为了像 segue 一样方便，现在你只需在 Storyboard 中修改按钮的类型，无需任何其它操作！`UIBarButtonItem` 需要额外拖拽 `masterViewController` 的连线到它的 view controller 上。无需添加 IBAction 或 addTarget。

通过 `RFSegueReturnDelegate` 可以控制是否返回。
