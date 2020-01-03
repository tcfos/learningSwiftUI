# Learning SwiftUI
Example project to learn a few features of iOS, Swift and SwiftUI

## Introduction
In case you want to build an iOS app on iOS 13 and you need to exchange data
with another app (e. g. an watchOS app) the shared container is a good solution.
This project shows how to write data to a file in a shared container and
how read the file again.

## Prerequisite
You need to register an app group. The documentation explains the details and the steps: https://developer.apple.com/documentation/xcode/adding_capabilities_to_your_app

## The Problem
In a previous project I used NSKeyedUnarchiver.unarchiveObjects(withFile path: String) 
to read from a file in a shared container. Unfortunately this function is now deprecated in iOS 13.
From the Xcode developer documentation I found NSKeyedUnarchiver.unarchiveTopLevelObjectWithData 
as an alternative function, but using it in my project seemed to be tricky.

This project shows how to write data to a file in a shared container and
how read the file again. 

Documentation: https://developer.apple.com/documentation/foundation/nskeyedunarchiver?language=swift
