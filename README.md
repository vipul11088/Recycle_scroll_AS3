Recycle_scroll_AS3
==================


Some days ago I was working on a project, in which I have to make a scroll component for device because I have to show a very long list on device. First I used simple touch list, which I had used in my earlier projects for desktop and for devices for short list comparatively. When I checked that component on iPhone 4, it completely stuck for only 500 list renderers. It was like a shocker for me because I have to load around 2500 list, and it was sticking in 500.
Then I use flex’s recycle list component, which is perfect for my need, but the another problem for me is that I couldn’t use flex component as my project was a pure ActionScript project.
Then I decided to reform that touch list component with pooling concept, so that I can recycle the renderers and can load it for large list. I used the flex recycle concept and apply it in my touch list component. I used object pooling for recycling, which works on following concept: 
The List creates an instance of a class called ObjectPool, which manages used and unused renderers. Whenever the List needs a new renderer, it asks the pool for a new one and when it does not need a renderer, it returns it to the pool. The pool tries to find unused renderers to satisfy the request for a new renderer and if it cannot, will create a new object and return that.
The core part of the logic resides in the onVerticalScroll function. The list always maintains a map of all visible renderers and as the scrollbar scrolls, the map is recalculated and renderers managed if the map is changed. 


The list uses an object pool to recycle the list item renderers. This gives the list the ability to scroll very large sets of items without taking a memory hit. The down side is that the list no longer accommodates item renderers of variable height.
