//
//  TableViewController.swift
//  UOGfinal
//
//  Created by Bruce on 9/21/16.
//  Copyright © 2016 Bruce. All rights reserved.
//

import UIKit


class TableViewController: UITableViewController {
    
    var backButtonDelegete: BackButtonDelegete?
    
    @IBAction func BackButtonPressed(sender: UIBarButtonItem) {
        backButtonDelegete?.backButtonPressedFrom(self)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let backgroundImage = UIImage(named: "background3")
        
        let imageView = UIImageView(image: backgroundImage)
        self.tableView.backgroundView = imageView
        
        // center and scale background image
        imageView.contentMode = .ScaleAspectFill
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var lessons: [String] = ["Dog - Perro", "Cat - Gato", "House - Casa", "Car - Carro", "Hi - Hola", "Movie - Pelicula"]
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CustomCell") as! CustomCell
        cell.leftLabel.text = "\(lessons[indexPath.row])"
//        if nums[indexPath.row] > 24 {
//            cell.PlayBtn.tintColor = UIColor.greenColor()
//        } else {
//            cell.RecBtn.tintColor = UIColor.redColor()
//        }
        // return cell so that Table View knows what to draw in each row
        return cell
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lessons.count
    }
    
    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        cell.backgroundColor = UIColor(white: 1, alpha: 0.7)
    }
    
   
    
    

}