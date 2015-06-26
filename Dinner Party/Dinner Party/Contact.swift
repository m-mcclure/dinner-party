
//
//  Guest.swift
//  Dinner Party
//
//  Created by Matthew McClure on 6/22/15.
//  Copyright (c) 2015 Matthew McClure. All rights reserved.
//

import Foundation

class Contact {
  var firstName: String
  var lastName: String
  var email: String
  var phoneNumber: String
  var contactPhoto = "blankman.jpg"
  var allergies = [Ingredient]()
  var likes = [Ingredient]()
  var dislikes = [Ingredient]()
  
  init(first: String, last: String, email: String, phoneNumber: String, contactPhoto: String){
    self.firstName = first
    self.lastName = last 
    self.email = email
    self.phoneNumber = phoneNumber
    self.contactPhoto = contactPhoto
  }
}