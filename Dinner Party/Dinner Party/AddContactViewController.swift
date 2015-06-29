//
//  AddContactViewController.swift
//  Dinner Party
//
//  Created by Matthew McClure on 6/28/15.
//  Copyright (c) 2015 Matthew McClure. All rights reserved.
//

import UIKit

class AddContactViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
  
  var passedNewContact: Contact!
  var passedContactsList = [Contact]()
  
  @IBAction func doneButtonPressed(){
    dismissViewControllerAnimated(true, completion: nil)
  }
  
  @IBAction func cancelButtonPressed(){
    dismissViewControllerAnimated(true, completion: nil)
    let lastAdded = passedContactsList.count - 1
    passedContactsList.removeAtIndex(lastAdded)
  }

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
      self.passedNewContact.contactPhoto = newImage
      picker.dismissViewControllerAnimated(true, completion: nil)
    }
  }

    override func viewDidLoad() {
        super.viewDidLoad()
      println(passedContactsList.count)
      setupTextFields()
      self.title = "Add Contact"
      var doneButton : UIBarButtonItem = UIBarButtonItem(title: "Done", style: UIBarButtonItemStyle.Plain, target: self, action: "doneButtonPressed")
      
      var cancelButton : UIBarButtonItem = UIBarButtonItem(title: "Cancel", style: UIBarButtonItemStyle.Plain, target: self, action: "cancelButtonPressed")
      
      self.navigationItem.leftBarButtonItem = cancelButton
      self.navigationItem.rightBarButtonItem = doneButton
      //sets background gradient
      let background = CAGradientLayer().lightColorFade()
      background.frame = self.view.bounds
      self.view.layer.insertSublayer(background, atIndex: 0)

//        println("\(passedNewContact.firstName) two")
        // Do any additional setup after loading the view.
    }
  
  private func setupTextFields() {
    
    self.firstNameField.delegate = self
    self.lastNameField.delegate = self
    self.emailField.delegate = self
    self.phoneNumberField.delegate = self
    
    self.firstNameField.tag = 0
    self.lastNameField.tag = 1
    self.emailField.tag = 2
    self.phoneNumberField.tag = 3
    
  }

  func textFieldShouldReturn(textField: UITextField) -> Bool {
    
    textField.resignFirstResponder()
    return false
  }
  
  func textFieldDidEndEditing(textField: UITextField) {
    if textField.tag == 0 {
      self.passedNewContact.firstName =  textField.text
    } else if textField.tag == 1 {
      self.passedNewContact.lastName = textField.text
    } else if textField.tag == 2 {
      self.passedNewContact.email = textField.text
    } else if textField.tag == 3 {
      self.passedNewContact.phoneNumber = textField.text
    }
  }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
