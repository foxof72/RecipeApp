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
    struct Ingredient {
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
    var ingredientList: [Ingredient] = []
    
    /*
     Function: createIngredient
     Parameters: theName-name of ingredient
            theUnit - unit (cup, teaspoon, etc) of ingredient
            theQuanity - amount of ingredient
     Purpose: creates an ingredient
     Pre: none
     Post: ingredient created
    */
    func createIngredient(theName: String, theUnit: String, theQuanity: Float32, theCatagory: String, theDirections: String) -> Ingredient{
        var theIngredient: Ingredient = Ingredient()
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
    
    func addToList(target: Ingredient){
        ingredientList.append(target)
    }
    
    /*
     Function changeIngredient
     Parameters:
     Purpose:
     Pre: ingredient to be changed is present
     Post: the ingredient is changed
    */
    func changeIngredient(nameOfChange: String, newName: String, newUnit: String, newQuanity: Float32) -> Void{
        //var i = 0;i<3;i+=1
        var i = 0
        while (i<3){
            if((ingredientList[i].name)==(nameOfChange)){
                if newName != "" {
                    ingredientList[i].name = newName
                }
                if newUnit != "" {
                    ingredientList[i].unit = newUnit
                }
                if newQuanity != -1 {
                    ingredientList[i].quanity = newQuanity
            }
            }
            i=i+1
        }
    }
}