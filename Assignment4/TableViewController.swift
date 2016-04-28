//
//  TableViewController.swift
//  Assignment4
//
//  Created by Albert Pierce on 4/16/16.
//  Copyright © 2016 Chapman University. All rights reserved.
//

import Foundation
import UIKit
import MessageUI

class TableViewController : UITableViewController, MFMailComposeViewControllerDelegate {
    
    var cellNames = [String]()
    var mannerNames = [String]()
    
    
   
    @IBAction func ExitBarButton(sender: AnyObject) {
        exit(0)
    }
    
    
    override func viewDidLoad() {
        cellNames = ["Eye Contact","Giving Compliments","Sneezing","Using the Restroom","Saying Excuse Me","Eating","Drinking","Asking Nicely"]
        
        
            
        //self.navigationController?.navigationBarHidden = true
        //self.navigationController?.toolbarHidden = true
        
    
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellNames.count
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let mySelectedCell:UITableViewCell = tableView.cellForRowAtIndexPath(indexPath)!
        
        mySelectedCell.accessoryType = UITableViewCellAccessoryType.Checkmark
        
        let indexPath = tableView.indexPathForSelectedRow!
        let currentCell = tableView.cellForRowAtIndexPath(indexPath)! as UITableViewCell
        
        if(mySelectedCell.accessoryType == UITableViewCellAccessoryType.Checkmark){
            mannerNames.append((currentCell.textLabel?.text)!)
        }
        
        
       
        
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")
        
        cell?.textLabel!.text = cellNames[indexPath.row]
        return cell!
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let VC = segue.destinationViewController as? ViewController {
            let clickedCellName = sender as! UITableViewCell
            
            VC.cellName = clickedCellName.textLabel!.text
        }
    }
    
   /* override func viewWillDisappear(animated: Bool) {
    
        let userDefaults =  NSUserDefaults.standardUserDefaults()
        
        let object = userDefaults.boolForKey("emailText")
        
        if(object == true){
            self.navigationController?.toolbarHidden = false
        }
        
    }*/
    
    
    @IBAction func SettingsButton(sender: AnyObject) {
        
        self.navigationController!.pushViewController(self.storyboard!.instantiateViewControllerWithIdentifier("A") as UIViewController, animated: true)
    }
    
    @IBAction func SendSummary(sender: AnyObject) {
        
        let userDefaults = NSUserDefaults.standardUserDefaults()
        let mailComposeViewController = configuredMailComposeViewController()
        if MFMailComposeViewController.canSendMail() {
            self.presentViewController(mailComposeViewController, animated: true, completion: nil)
        }
        else {
            self.showSendMailErrorAlert()
        }
        
        
    
      
        
    }
    
    func configuredMailComposeViewController() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        let userDefaults = NSUserDefaults.standardUserDefaults()
        
        
        mailComposerVC.mailComposeDelegate = self // Extremely important to set the --mailComposeDelegate-- property, NOT the --delegate-- property
        
        
        let mannerNames = self.mannerNames.joinWithSeparator(",")
        let email = userDefaults.stringForKey("emailText")
        mailComposerVC.setToRecipients([email!])
        mailComposerVC.setSubject("Manners learned")
        mailComposerVC.setMessageBody("The manners i learned are\n" + mannerNames, isHTML: false)
        
        return mailComposerVC
    }
    func showSendMailErrorAlert() {
        let sendMailErrorAlert = UIAlertView(title: "Could Not Send Email", message: "Your device could not send e-mail.  Please check e-mail configuration and try again.", delegate: self, cancelButtonTitle: "OK")
        sendMailErrorAlert.show()
    }
    
    func mailComposeController(controller: MFMailComposeViewController!, didFinishWithResult result: MFMailComposeResult, error: NSError!) {
        controller.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    
    
}