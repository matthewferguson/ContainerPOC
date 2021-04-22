# ContainerPOC

Proof of Concept(or R&D training excercise) to test out the use of Swift 4/5 and Swift Storyboard Container Views.  This project uses Interface Builder Storyboards, embeds View Controllers within the Container View using storyboard references, and utilizes horizontal AutoLayout. Basically, this project shows you how to embed a module that is a swift collection view in such a manner that a developer assigned a change never has to touch or alter the main view.  Only develop for the collection view that is embedded. We basically seperate and decouple using Container Views.  In a way this concept is the grandfather to horizontal/vertical autolayout stack views. 

Pros:
1. Decouples code modules so that larger teams have less merging issues (git).
2. Allows a Data Driven Event Driven Architecture (Reactive) in an isolated area. For example, this example has a collection view that can be updated from Core Data or other persistence frameworks and not have a tightly coupled code base to the main or other view controllers. This collectin view can have an associated model view. 
Cons:
1. You buy into storyboard use and as new technologies are introduced, like swiftUI, this concept might or might not be useful. 

This project is for training purposes only. MIT licensing and considered open source. 

