//
//  meal.swift
//  foodTracker
//
//  Created by John Williams on 4/24/16.
//
//

import UIKit

class meal {
    //MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    //MARK: Initializer
    init?(name: String, photo: UIImage?, rating: Int){
        self.name = name
        self.photo = photo
        self.rating = rating
        if name.isEmpty || rating<0
        {
            return nil
        }
    }
}
