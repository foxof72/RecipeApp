//
//  ratingControl.swift
//  foodTracker
//
//  Created by John Williams on 3/24/16.
//
//

import UIKit

class ratingControl: UIView {
    //MARK: properties
    let starCount = 5
    let spacing = 5
    var rating = 0
        {
        didSet{
            setNeedsLayout()
        }
    }
    var ratingButtons = [UIButton]()
    //MARK: initalilization
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        for _ in 0..<starCount {
            let filledStarImage = UIImage(named: "filledStar")
            let emptyStarImage = UIImage(named: "emptyStar")
            let button = UIButton()
            button.setImage(emptyStarImage, forState: .Normal)
            button.setImage(filledStarImage, forState: .Selected)
            button.setImage(filledStarImage, forState: [.Highlighted, .Selected])
            button.adjustsImageWhenHighlighted = false
            button.addTarget(self, action: #selector(ratingControl.ratingButtonTapped(_:)), forControlEvents: .TouchDown)
            ratingButtons += [button]
            addSubview(button)
        }
    }
    override func layoutSubviews(){
        //set the buttons size to a square directly related to the width and height of the stack basicMealInfo
        let buttonSize = Int(frame.size.height)
        var buttonFrame = CGRect(x: 0, y: 0, width: buttonSize, height: buttonSize)
        //offset each button by lenght of button plus spacing
        for(index, button) in ratingButtons.enumerate(){
            buttonFrame.origin.x = CGFloat(index * (buttonSize+spacing))
            button.frame=buttonFrame
        }
        updateButtonSelectionStates()
    }
    override func intrinsicContentSize() -> CGSize {
        let stars = 5
        let buttonSize = Int(frame.size.height)
        let width = (buttonSize * stars) + (spacing * (stars-1))
        return CGSize(width: 240, height: 44)
    }
    
    //MARK: button action
    func ratingButtonTapped(button: UIButton){
        rating = ratingButtons.indexOf(button)! + 1
        updateButtonSelectionStates()
    }
    func updateButtonSelectionStates(){
        //if the index of a button is less than the rating, then the button should be selected
        for (index, button) in ratingButtons.enumerate()
        {
        button.selected = index < rating
        }
    }
}
