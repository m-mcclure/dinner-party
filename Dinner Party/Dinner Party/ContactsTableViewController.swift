//
//  GuestsTableViewController.swift
//  Dinner Party
//
//  Created by Matthew McClure on 6/25/15.
//  Copyright (c) 2015 Matthew McClure. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController, UITableViewDataSource {
  
  var contactsList = [Contact]()
  var newContact: Contact!

    override func viewDidLoad() {
        super.viewDidLoad()
      tableView.rowHeight = 50
        loadSampleContacts()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
  
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    self.tableView.reloadData()
  }
  
  func loadSampleContacts(){
    let johnImage = UIImage(named: "papa")
    let john = Contact(first: "John", last: "McClure", email: "john@mcclure.com", phoneNumber: "9017564847", contactPhoto: johnImage!)
    contactsList.append(john)
    let thelmaImage = UIImage(named: "grandmother")
    let thelma = Contact(first: "Thelma", last: "McClure", email: "thelma@mcclure.com", phoneNumber: "9018578380", contactPhoto: thelmaImage!)
    contactsList.append(thelma)
  }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return contactsList.count
    }
  
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("contactCell", forIndexPath: indexPath) as! UITableViewCell
      let indexPath = indexPath.row
        // Configure the cell...
      
      let personToDisplay = contactsList[indexPath]
      let fullName = "\(personToDisplay.firstName)" + " \(personToDisplay.lastName)"
      cell.textLabel!.text = fullName
        cell.imageView!.image = personToDisplay.contactPhoto
      cell.imageView!.layer.cornerRadius = 24.0
      cell.imageView!.layer.masksToBounds = true
        return cell
    }
  
  override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
    if (editingStyle == UITableViewCellEditingStyle.Delete) {
      let indexPath = indexPath.row
      contactsList.removeAtIndex(indexPath)
      viewWillAppear(true)
      for contact in contactsList {
        println(contact.firstName)
      }
    }
  }
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == "AddContact" {
      let destination = segue.destinationViewController as! UINavigationController
      let addContactViewController = destination.topViewController as! AddContactViewController
      println("segue works")
      addContact()
      addContactViewController.passedNewContact = newContact
      addContactViewController.passedContactsList = contactsList
    }
  }
  
  func addContact()-> Contact {
    let blankman = UIImage(named: "blankman")
    newContact = Contact(first: "", last: "", email: "", phoneNumber: "", contactPhoto: blankman!)
    contactsList.append(newContact)
    return newContact
  }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
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
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
