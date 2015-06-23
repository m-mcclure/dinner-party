
//
//  Guest.swift
//  Dinner Party
//
//  Created by Matthew McClure on 6/22/15.
//  Copyright (c) 2015 Matthew McClure. All rights reserved.
//

import Foundation

class Guest {
  var name: String
  var email: String
  var phoneNumber: String
  var guestPhoto = "blankman.jpg"
  var allergies = [Ingredient]()
  var likes = [Ingredient]()
  var dislikes = [Ingredient]()
  
  init(name: String, email: String, phoneNumber: String, guestPhoto: String){
    self.name = name
    self.email = email
    self.phoneNumber = phoneNumber
    self.guestPhoto = guestPhoto
  }
}