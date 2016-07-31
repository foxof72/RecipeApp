//
//  recipe.swift
//  foodTracker
//
//  Created by John Williams on 3/13/16.
//
//

import UIKit
import Foundation

class recipe {
    struct ingredient {
        var name: String
        var unit: String
        var quanity: Float32
        init (){
            name = "No Name"
            unit = "No Unit"
            quanity = 0.00
        }
    }
    
    //list of ingredients
    var ingredientList: [ingredient] = []
    
    /*
     Function: createIngredient
     Parameters: theName-name of ingredient
            theUnit - unit (cup, teaspoon, etc) of ingredient
            theQuanity - amount of ingredient
     Purpose: creates an ingredient
     Pre: none
     Post: ingredient created
    */
    func createIngredient(theName: String, theUnit: String, theQuanity: Float32, theCatagory: String, theDirections: String) -> ingredient{
        var theIngredient: ingredient = ingredient()
        theIngredient.name = theName
        theIngredient.unit = theUnit
        theIngredient.quanity = theQuanity
        return theIngredient
        
    }
    
    /*
     Function addToList
     Parameters: target-ingredient to be added to list
     Purpose: Adds a target ingredient to the list
     Pre: ingredientList must be inintialized, and at least one ingredient created
     Post: adds target (the ingredient) into the list
    */
    
    func addToList(target: ingredient){
        ingredientList.append(target)
    }
}