//
//  SelectAllergiesTableViewController.swift
//  Dinner Party
//
//  Created by Matthew McClure on 6/27/15.
//  Copyright (c) 2015 Matthew McClure. All rights reserved.
//

import UIKit

class SelectAllergiesTableViewController: UITableViewController {
  
  var allergiesList = [Ingredient]()
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let lactose   = Ingredient(name: "lactose")
    allergiesList.append(lactose)
    let peanuts   = Ingredient(name: "peanuts")
    allergiesList.append(peanuts)
    let gluten    = Ingredient(name: "gluten")
    allergiesList.append(gluten)
    let eggs      = Ingredient(name: "eggs")
    allergiesList.append(eggs)
    let treeNuts  = Ingredient(name: "tree nuts")
    allergiesList.append(treeNuts)
    let soy       = Ingredient(name: "soy")
    allergiesList.append(soy)
    let wheat     = Ingredient(name: "wheat")
    allergiesList.append(wheat)
    let shellfish = Ingredient(name: "shellfish")
    allergiesList.append(shellfish)
    let fish      = Ingredient(name: "fish")
    allergiesList.append(fish)
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = false
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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
    return allergiesList.count
  }
  
  
  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("allergyCell", forIndexPath: indexPath) as! UITableViewCell
    let item = allergiesList[indexPath.row]

    configureCheckmarkForCell(cell, withChecklistItem: item)
    
    // Configure the cell...
    let displayedAllergen = allergiesList[indexPath.row]
    cell.textLabel!.text = displayedAllergen.name
    
    return cell
  }
  
  override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    if let cell = tableView.cellForRowAtIndexPath(indexPath) {
      let item = allergiesList[indexPath.row]
      item.toggleChecked()
      
      configureCheckmarkForCell(cell, withChecklistItem: item)
    }
    tableView.deselectRowAtIndexPath(indexPath, animated: true)
  }
  
  
  
  func configureCheckmarkForCell(cell: UITableViewCell, withChecklistItem item: Ingredient) {
    if item.checked {
      cell.accessoryType = .Checkmark
    } else {
      cell.accessoryType = .None
    }
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
