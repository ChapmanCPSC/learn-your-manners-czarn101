//
//  SettingsViewController.swift
//  Assignment4
//
//  Created by Albert Pierce on 4/21/16.
//  Copyright © 2016 Chapman University. All rights reserved.
//

import Foundation
import UIKit
import MessageUI


class SettingsViewController : UIViewController{
    
    @IBOutlet weak var EmailAddressText: UITextField!
    
    
    
    override func viewDidLoad() {
       // let savedEmailStringKey = NSUserDefaults.standardUserDefaults()
       // EmailAddressText.text = savedEmailStringKey.stringForKey("emailText")
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func SendEmailButton(sender: AnyObject) {
        let userDefaults = NSUserDefaults.standardUserDefaults()
        
        
        //NSUserDefaults.standardUserDefaults().setObject(emailText, forKey: "emailText")
        //NSUserDefaults.standardUserDefaults().synchronize()
        
        
        userDefaults.setObject(EmailAddressText.text, forKey: "emailText")
        
        userDefaults.synchronize()
        
        var alert = UIAlertController(title: "Saved", message: "Your email has been saved", preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .Cancel, handler: nil))
        
        self.presentViewController(alert, animated: true, completion: nil)
        
        
        
        
        //let ShowTableView : UINavigationController = self.storyboard!.instantiateViewControllerWithIdentifier("TableView") as! UINavigationController
        
    
        
       
        
        
    }
   
}