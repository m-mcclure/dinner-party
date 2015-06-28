//
//  Event.swift
//  Dinner Party
//
//  Created by Matthew McClure on 6/22/15.
//  Copyright (c) 2015 Matthew McClure. All rights reserved.
//

import Foundation

class Event {
  var name: String
  var eventDate: String
  var location: String
  var guests = [Contact]()
  var offLimits = [Ingredient]()
  var avoidIfPossible = [Ingredient]()
  var menuSuggestions = [Ingredient]()
  
  init(name: String, eventDate: String, location: String){
    self.name = name
    self.eventDate = eventDate
    self.location = location
  }
}