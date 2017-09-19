//
//  Meal.swift
//  FoodTracker
//
//  Created by Kacper Kowalski on 19.09.2017.
//  Copyright © 2017 Kacper Kowalski. All rights reserved.
//

import UIKit

class Meal {
    
    //MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    
    init?(name: String, photo: UIImage?, rating: Int) {
        
        // The name cannot be empty
        guard !name.isEmpty else {
            return nil
        }
        // The rating must be between 0 and 5 inclusively
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        // Initialize stored properties
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}
