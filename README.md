# ContainerPOC

keywords: iOS Architecture, UIKit, UIContainerView, ContainerView, Container View, CollectionView, Collection View, UICollectionView, Storyboard, iOS SDK 14, 

Proof of Concept (or R&D training excercise) to experience the use of Swift 5 and Swift Storyboard Container Views.  This project uses Interface Builder Storyboards, embeds View Controllers within the Container View using storyboard references, and utilizes horizontal AutoLayout. Basically, this project shows you how to embed a module (set of source files as plug and play) as a swift collection view. Embedded in such a manner that a developer can be assigned a change request and never has to touch or alter the parent View Controller.  Only develop for the collection view that is embedded. We basically seperate and decouple using Container Views. This concept is the grandparent to horizontal/vertical autolayout stack views. 

Pros:
1. Decouples code modules so that larger teams have less merging conflicts (git).
2. Allows a Mobile Data Driven Event Driven Architecture (Reactive) in an isolated area. Basically this module can tap into a data flow without being tightly coupled to other modules. For example, this collection view can be updated from Core Data or other persistence frameworks and not have a tightly coupled code base to the main, AppDelegate, or other view controllers. This collection view can have an associated model view, but no need for a tighly coupled architecture as a goal. 

Cons:
1. You buy into storyboard use and as new technologies are introduced, like swiftUI, this concept might or might not be useful. 

Reference:

(Swift) https://developer.apple.com/documentation/uikit/view_controllers/creating_a_custom_container_view_controller

(Objective-C) https://developer.apple.com/library/archive/featuredarticles/ViewControllerPGforiPhoneOS/ImplementingaContainerViewController.html

Supports only iPad. Compiled for iPadOS SDK 14.
This project is for training purposes only. MIT licensing and considered open source. 
