//
//  AddContactTableViewController.swift
//  Dinner Party
//
//  Created by Matthew McClure on 6/25/15.
//  Copyright (c) 2015 Matthew McClure. All rights reserved.
//

import UIKit

class AddContactTableViewController: UITableViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
  
  var passedNewContact: Contact!

  @IBOutlet weak var firstNameField: UITextField!
  
  @IBOutlet weak var lastNameField: UITextField!
  
  @IBOutlet weak var emailField: UITextField!
  
  @IBOutlet weak var phoneNumberField: UITextField!
  
  @IBOutlet weak var profilePhoto: UIImageView!
  
  @IBAction func takePhoto(sender: UIButton) {
    
    let imagePickerController = UIImagePickerController()
    imagePickerController.delegate = self
    imagePickerController.sourceType = .Camera
    imagePickerController.allowsEditing = true
    
    if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera) {
      self.presentViewController(imagePickerController, animated: true, completion: nil)
    }
  }
  
  @IBAction func choosePhoto(sender: UIButton) {
    let imagePickerController = UIImagePickerController()
    imagePickerController.delegate = self
    imagePickerController.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
    imagePickerController.allowsEditing = true
    
    if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.PhotoLibrary) {
      self.presentViewController(imagePickerController, animated: true, completion: nil)
    }
  }
  
  func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
    if let newImage = info[UIImagePickerControllerEditedImage] as? UIImage {
      self.profilePhoto.image = newImage
      //selectedPerson.profilePhoto = newImage
      picker.dismissViewControllerAnimated(true, completion: nil)
    }
  }
  
  @IBOutlet weak var selectedAllergiesCountLabel: UILabel!
  
  @IBOutlet weak var selectedAversionsCountLabel: UILabel!
  
  @IBOutlet weak var selectedFavoritesCountLabel: UILabel!
  
  @IBAction func cancel(sender: UIBarButtonItem) {
    dismissViewControllerAnimated(true, completion: nil)
  }
  
  @IBAction func done(sender: UIBarButtonItem) {
    dismissViewControllerAnimated(true, completion: nil)
  }
 
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
  
  private func setupTextFields() {
    
    self.firstNameField.delegate = self
    self.lastNameField.delegate = self
    self.firstNameField.tag = 0
    self.lastNameField.tag = 1
    self.emailField.tag = 2
    self.phoneNumberField.tag = 3
    self.firstNameField.text = self.passedNewContact.firstName
    self.firstNameField.text = self.passedNewContact.lastName
    self.emailField.text = self.passedNewContact.email
    self.phoneNumberField.text = self.passedNewContact.phoneNumber
    
  }
  
  func textFieldShouldReturn(textField: UITextField) -> Bool {
    
    textField.resignFirstResponder()
    return false
  }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 2
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 5
    }
  
  func textFieldDidEndEditing(textField: UITextField) {
    if textField.tag == 0 {
      //set the first name
      self.passedNewContact.firstName =  textField.text
    } else if textField.tag == 1 {
      //set the last name
      self.passedNewContact.lastName = textField.text
    } else if textField.tag == 2 {
      //set the last name
      self.passedNewContact.email = textField.text
    } else if textField.tag == 3 {
      //set the last name
      self.passedNewContact.phoneNumber = textField.text
    }
  }

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as! UITableViewCell

        // Configure the cell...

        return cell
    }
    */

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
