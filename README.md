# Learning SwiftUI
Example project to learn a few features of iOS, Swift and SwiftUI

## Introduction
In case you want to build an iOS app on iOS 13 and you need to exchange data
with another app (e. g. an watchOS app) the shared container is a good solution.
This project shows how to write data to a file in a shared container and
how read the file again.

## Prerequisite
You need to register an app group. The documentation explains the details and the steps: https://developer.apple.com/documentation/xcode/adding_capabilities_to_your_app

## Save and Load Data – NSKeyedArchiver NSKeyedUnarchiver
In a previous project I used NSKeyedUnarchiver.unarchiveObjects(withFile path: String) 
to read from a file in a shared container. Unfortunately this function is now deprecated in iOS 13.
From the Xcode developer documentation I found NSKeyedUnarchiver.unarchiveTopLevelObjectWithData 
as an alternative function, but using it in my project seemed to be tricky.

This project shows how to write data to a file in a shared container and
how read the file again. 

Documentation: https://developer.apple.com/documentation/foundation/nskeyedunarchiver?language=swift

# Resources
Playground auf dem iPad:
https://www.apple.com/de/swift/playgrounds/

Language Reference:
https://swift.org

Tutorial:
https://www.hackingwithswift.com/read/de/0/1/xcode-installieren-und-einen-playground-erstellen

## SwiftUI Documentation

**Apple Tutorials**

https://developer.apple.com/tutorials/swiftui/

**WWWDC 2019 Videos**

Introducing SwiftUI:

https://developer.apple.com/videos/play/wwdc2019/204

**SwiftUI Essentials**

https://developer.apple.com/videos/play/wwdc2019/216/

**SwiftUI Cheat Sheet**

https://fuckingswiftui.com/

https://goshdarnswiftui.com/


**Swift 5.1 references for busy coders**

https://swiftly.dev

**Hacking with Swift**

https://www.hackingwithswift.com/articles

**SWIFTUI and  Storyboard:**

https://www.raywenderlich.com/3715234-swiftui-getting-started

**A deeper understanding of SwiftUI**

https://www.egeniq.com/blog/deeper-understanding-swiftui


**Apple Human Interface Guidelines – Gestures**

https://developer.apple.com/design/human-interface-guidelines/ios/user-interaction/gestures/


**Hacking Swift**

What’s the difference between @ObservedObject, @State, and @EnvironmentObject?

https://www.hackingwithswift.com/quick-start/swiftui/whats-the-difference-between-observedobject-state-and-environmentobject


