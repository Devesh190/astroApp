# astroapp

A new Flutter project.

## Tech Stack
Flutter SDK: 3.19.4

State Management: Provider

## State Management Explanation
We are using the Provider package for state management in this screen. The HomeProvider 
is responsible for managing the loading state (isLoading) and providing data for menu items, 
live experts, and expert lists. The Consumer<HomeProvider> widget is used to listen for changes 
and update the UI accordingly.


