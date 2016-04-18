//
//  TableViewController.swift
//  Assignment4
//
//  Created by Albert Pierce on 4/16/16.
//  Copyright © 2016 Chapman University. All rights reserved.
//

import Foundation
import UIKit

class TableViewController : UITableViewController {
    
    var cellNames = [String]()
    
    
   
    @IBAction func ExitBarButton(sender: AnyObject) {
        exit(0)
    }
    
    
    override func viewDidLoad() {
        cellNames = ["Eye Contact","Giving Compliments","Sneezing","Using the Restroom","Saying Excuse Me","Eating","Drinking","Asking Nicely"]
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellNames.count
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let mySelectedCell:UITableViewCell = tableView.cellForRowAtIndexPath(indexPath)!
        
        mySelectedCell.accessoryType = UITableViewCellAccessoryType.Checkmark
        
        
        
       
        
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")
        
        cell?.textLabel!.text = cellNames[indexPath.row]
        return cell!
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let VC = segue.destinationViewController as! ViewController
        
        
        let clickedCellName = sender as! UITableViewCell
        
        VC.cellName = clickedCellName.textLabel!.text
    }
    
    
}