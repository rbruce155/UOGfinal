//
//  MenuViewController.swift
//  UOGfinal
//
//  Created by Bruce on 9/22/16.
//  Copyright © 2016 Bruce. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, BackButtonDelegete {
    
    @IBAction func SearchGoButtonPressed(sender: UIButton) {
        performSegueWithIdentifier("SearchFriend", sender: UIButton.self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func backButtonPressedFrom(controller: UITableViewController){
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SearchFriend" {
            let navigationController = segue.destinationViewController as! UINavigationController
            let controller = navigationController.topViewController as! TableViewController
//            let newDare = NSEntityDescription.insertNewObjectForEntityForName("Dare", inManagedObjectContext: managedObjectContext) as! Dare
            controller.backButtonDelegete = self
            //controller.delegate = self
            //controller.newDare = newDare
        }
    }
    
    
    
    
    
}


