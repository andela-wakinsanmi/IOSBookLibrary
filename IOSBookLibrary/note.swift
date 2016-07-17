//
//  note.swift
//  IOSBookLibrary
//
//  Created by spykins on 17/07/2016.
//  Copyright © 2016 Andela. All rights reserved.
//

import Foundation

/*
   The way View Controller works is that, we give it a Table View 
    And then we stick a table cell inside the Table view.. That's a dynamic cell, so we can dynamically replicate it and change the values and attributes inside it's design
 
    Now this cell is now Available at the UI, but we need to create a class of our TableViewCell
        1. Create this file in the Views sub-group
        2. Create new file, Tap on Cocoa Touch class
        3. let it subclass UITableViewCell
        4. Call it MyBookTableViewCell
 
    Now, go to StoryBoard, click the Table Cell.. go to the Identity Inspector and change the class to the newlycreated BookTableViewCell
 
    Now in the LibraryViewController.swift class.. create an object of the UiTableView
    @IBOutlet weak var tableView : UITableView!
 
    We need to link this to the TableView in the Storyboard..
    We go to the storyboard, click on Library View Controller , we click on connection inspection(The last icon)
    We just drag the tableView created in the model to our tableView
 
    After the connection from the tableView to our swift file..
 
    We will go ahead and write TableView Protocols 
 
    class LibraryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
 
    What are protocols???? Swift is a protocol oriented programming language... Protocols is equal to Java Interface.. A protocol is an interface....
    They are the same, since protocols gives the Ability to put properties in there as Abstract and can be defined later
    Protocols can also be extended... using the extension (EXTENSION) method that we spoke about in Book while creating the Entity for the ....
    In Swift class and protocol can be extended
 
    //For java.. Java 8 also has properties in it's interfaces and they can be changed
 
    UITableViewDelegate : Is responsible for taking the click action for any table view cell.. This can be like a click listener in Java
 
    UITableViewDataSource.. This is basically the Adapter.. ArrayAdapter that we have in Android development
 
    This creates All this Methods 
 
 /*
    ViewDidLoad is almost the same thing like onCreate in Android.. Is like creating a view.. onCreate for Activity
    What we are doing is basically assigning the tableview delegate  to be equals our LibraryViewController
    Andr datasource also to the LibraryViewController... We are setting out Adapter with the datasource... and onclick listenet with the delegate....
 */
 override func viewDidLoad() {
 super.viewDidLoad()
 // Do any additional setup after loading the view, typically from a nib.
 tableView.delegate = self
 tableView.dataSource = self
 }
 
 /*
    This is comming from Datasource.. Which ask the number of sections in the TableView...
 */
 func numberOfSectionsInTableView(tableView: UITableView) -> Int {
 return 1
 }
 
 /*
    This talks about how many number of rows we want to have in the section..
    For protocols in swift, there is design pattern on how most of the protocols function will actually work....

    The question is, how many rows of cell do we need in each section
    This function is called tableView numberOfRowsInSection
 */
 
 func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
 return 1
 }
 
 /*
    This is the bundle identifier giving to the cell, in the Attribute Inspector.. The fourth Icon .. which is what we will use BookTableViewCell...
    What we are saying is, for this identifier, search for it in the tableview and give me the cell AS tableViewCell
 
    The operator as! means that it will simply TypeCast it from UITableView cell which was it returns to a BookTableViewCell..
    This functions reiterate... It will go ahead and search for all the cells that we have for this identifier  "BookTableViewCell" and it will create a new one for us... This is what it'e meant by dynamic cells...
 
    So we can create any cell that we want and dequeue it .. using this function and simply customize it
    //Then We can customize it here, to meet the customization that we need before returning it...
    
    
 
    This function is called tableViewCellForRowAtIndexPath using the external parameter
 */
 
 func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
 let cellIdentifier = "BookTableViewCell"
 let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as!
 BookTableViewCell
 
 //We can customize it here, to meet the customization that we need
 return cell
 
 }


 */