//: Nested Dictionary Code Challenge

import UIKit

/* 
In just a few weeks, we will be creating a restaurants explorer app using Foursquare API. When you request data from Foursquare, it will return back to you sort-of a dictionary like this:
 
 var fourSquareDatabase = [
 
 "nearBy" : [
 
 "1m" : ["Starbucks", "Apple Bees"],
 
 "5m" : ["Red Lobster", "Sunny Cafe"]
 
 ]
 
 ]
 
 (1). Let's create a typealias for the type of this dictionary called RestaurantDatabase. Can you figure out what's the type of this dictionary?
 (2). Create function called get restaurants in distance (a string), from database (a RestaurantDatabase) that returns an optional array of string.
 (3). Here let's use guard-let syntax to return nil or an array of restaurant's names in that distance.
 */

typealias RestaurantDatabase = [String : [String : [String]]]  // 2.7.1

var fourSquareDatabase : [String : [String : [String]]] = [

    "nearby" : [
    
        "1m" : ["Freddy's", "Freebirds"],
        "5m" : ["Sonic", "Texas Roadhouse"]
    
    ]

]

func getRestaurants(within distance: String, fromThe database: RestaurantDatabase ) -> [String]? { // 2.7.2
    
    guard let nearbyRestaurants = database["nearby"],  // 2.7.3
        let closeness = nearbyRestaurants[distance] else {
            return nil
    }
    
    return closeness
    
}

var restaurantsWithin5Meters = getRestaurants(within: "5m", fromThe: fourSquareDatabase) // Just to test to make sure it works...IT DOES!!!


