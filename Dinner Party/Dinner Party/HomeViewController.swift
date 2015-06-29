//
//  HomeViewController.swift
//  Dinner Party
//
//  Created by Matthew McClure on 6/22/15.
//  Copyright (c) 2015 Matthew McClure. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UINavigationControllerDelegate {
  
  var newContact: Contact!
  
  @IBAction func createEvent(sender: UIButton) {
//    let blankman = UIImage(named: "blankman")
//    newContact = Contact(first: "", last: "", email: "", phoneNumber: "", contactPhoto: blankman!)
//    contactsList.append(newContact)
//    return newContact
  }
  
  @IBAction func createContact(sender: UIButton) {
    
  }
  
    override func viewDidLoad() {
        super.viewDidLoad()
      //sets background gradient
      let background = CAGradientLayer().colorFade()
      background.frame = self.view.bounds
      self.view.layer.insertSublayer(background, atIndex: 0)
      self.view.backgroundColor = UIColor(patternImage: UIImage(named: "forkSpoonFull.png")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
  
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == "AddContact" {
      let addContactViewController = segue.destinationViewController as! AddContactViewController
      println("segue worked")
      
      let blankman = UIImage(named: "blankman")
      let newContact = Contact(first: "ummj", last: "", email: "", phoneNumber: "", contactPhoto: blankman!)
      
      addContactViewController.passedNewContact = newContact
    }
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
