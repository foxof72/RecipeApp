//
//  mealTableViewController.swift
//  foodTracker
//
//  Created by John Williams on 5/18/16.
//
//

import UIKit

class mealTableViewController: UITableViewController {
    //MARK: Properties
    var meals = [meal]()

    override func viewDidLoad() {
        super.viewDidLoad()
        loadSampleMeals()  //load the sample meals
    }
    //this is a tester function to create sample meals
    func loadSampleMeals(){
        let photo1 = UIImage(named: "macAndCheese")
        let meal1 = meal(name: "Mac and Cheese", photo: photo1, rating: 4)!
        let photo2 = UIImage(named: "turkeySandwich")
        let meal2 = meal(name: "Turkey Sandwich", photo: photo2, rating: 3)!
        let photo3 = UIImage(named: "grilledCheese")
        let meal3 = meal(name: "Grilled Cheese", photo: photo3, rating: 5)!
        meals += [meal1, meal2, meal3]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1 //will now show one section
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count //return the number of meals in the array and set the number of rows equal to the number of meals
    }

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
