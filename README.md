# swift_xcode_experiments

[![](https://img.shields.io/badge/XCode-11.3-black.svg)](https://developer.apple.com/xcode/) 
[![](https://img.shields.io/badge/Swift-5.1.3-gray.svg)](https://developer.apple.com/swift/) 

> It goes without saying that you should not use this code for nefarious purposes or to plagiarize - feel free however to use it to review and learn.

Experiments with Swift and XCode.

Projects prepended with `objc` or `obj` are written in Objective C (XCode).

## CocoaPods

For [Ruby installation](https://thoughtscript.io/blog/000000000052.html), then:

```bash
$ sudo gem install cocoapods
$ pod install
```

> You must open the `<PROJECT_NAME>.xcworkspace` file rather than the `<PROJECT_NAME>.xcodeproj` file to build and compile correctly.

You'll also need: https://github.com/samkaufman/CurrencyRequest.

## xcodeproj

Files (**header** and **objective-c m** files) must be added through XCode (they can't be just copied and pasted in).

Apparently, when files are added the correct way, they are registered with the projects `.xcodeproj` file (and must be to correctly compile and run the code).