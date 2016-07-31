//
//  ViewController.swift
//  foodTracker
//
//  Created by John Williams on 3/10/16.
//
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //array of ingredients
    
    //MARK: Properties
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    //@IBOutlet weak var ingredientName: UITextField!
    //@IBOutlet weak var ingredientUnit: UITextField!
    //@IBOutlet weak var ingredientQuanity: UITextField!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var ratingControlOutlet: ratingControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //handle text field input from user by calling back to delegate
        nameTextField.delegate=self
    }
    //MARK: UIDelegateTextField for meal name
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        //hide keyboard
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(textField: UITextField) {
        mealNameLabel.text=textField.text
    }
    
    //MARK: UIImagePickerDelegateController for adding picture of the meal
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        //dismisses the image picker if true
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        photoImageView.image = selectedImage
        dismissViewControllerAnimated(true, completion: nil)
    }

    //MARK: Actions
    
    
    @IBAction func SelectImageFromPhotoLib(sender: UITapGestureRecognizer) {
        //hides the keyboard
        nameTextField.resignFirstResponder()
        //
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .PhotoLibrary
        imagePickerController.delegate = self
        presentViewController(imagePickerController, animated: true, completion: nil)
        print("Photo set")
    }
}