//
//  SelectAllergiesViewController.swift
//  Dinner Party
//
//  Created by Matthew McClure on 6/28/15.
//  Copyright (c) 2015 Matthew McClure. All rights reserved.
//

import UIKit

class SelectAllergiesViewController: UIViewController/*, UITableViewDataSource*/ {
  
  var allergiesList = [Ingredient]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
//  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//    return self.allergiesList.count
//  }
//  
//  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//    //let indexPath = indexPath.row
//    let cell = self.tableView(<#tableView: UITableView#>, cellForRowAtIndexPath: indexPath)
//    let personToDisplay = self.allergiesList[indexPath.row]
//
//    return cell
//  }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
