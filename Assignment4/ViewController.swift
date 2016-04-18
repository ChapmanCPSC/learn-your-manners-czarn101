//
//  ViewController.swift
//  Assignment4
//
//  Created by Albert Pierce on 4/16/16.
//  Copyright © 2016 Chapman University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ImageViewer: UIImageView!
    
    @IBOutlet weak var TextViewer: UITextView!
    
    
    var cellName : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if cellName == "Eye Contact"{
            
            ImageViewer.image = UIImage(named: "EyeContact")
            TextViewer.text = "Maintain eye contact to show confidence in yourself. This makes you a respectful person and a good listener."
        }
        else if cellName == "Giving Compliments"{
            
            ImageViewer.image = UIImage(named: "Compliments")
            TextViewer.text = "Do not comment on other people's physical characteristics unless, of course, it's to compliment them, which is always welcome. Keep negative opinions to yourself, or between you and your friends, and out of earshot of others."
        }
        else if cellName == "Sneezing"{
            
            ImageViewer.image = UIImage(named: "Sneezing")
            TextViewer.text = "Cover your mouth when you cough or sneeze, and don't pick your nose in public."
        }
        
        else if cellName == "Using the Restroom"{
            
            ImageViewer.image = UIImage(named: "Restroom")
            TextViewer.text = "Make sure to respect other restrooms like they are yours. Respectfully close the lid when you are done using the restroom. Always remember to wash your hands with soap and water after you finish using the restroom.Knock on closed doors and wait to see if there's a response before entering."
        }
        else if cellName == "Saying Excuse Me"{
            
            ImageViewer.image = UIImage(named: "ExcuseMe")
            TextViewer.text = "If you do need to get somebody's attention right away, the phrase 'excuse me' is the most polite way for you to enter the conversation. If you bump into somebody, immediately say 'Excuse me'."
        }
        else if cellName == "Eating"{
            
            ImageViewer.image = UIImage(named: "Eating")
            TextViewer.text = "When asking for something, say 'Please'. When you have spent time at a friend's house, remember to thank your hosts for having you over and for the good time you had. Use a quiet voice inside, especially in places like restaurants. Try not to use foul language at the table because you will look unprofessional. Use eating utensils properly. If you are unsure how to do so, ask someone to teach you or watch what people you respect do. Chew with your mouth closed. Don't reach for things at the table; ask to have them passed."
        }
        else if cellName == "Drinking"{
            
            ImageViewer.image = UIImage(named: "Drinking")
            TextViewer.text = "Try not to slurp your drink because it looks disrespectful. When you finish your drink try to recycle your container if you can."
        }
        else if cellName == "Asking Nicely"{
            ImageViewer.image = UIImage(named: "AskingNicely")
            TextViewer.text = "If you are in public and want to ask a question appraoch with the phrase 'Excuse Me' to look polite. When you get your question answered reply with 'Thank You'"
        }
        
        
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
}

