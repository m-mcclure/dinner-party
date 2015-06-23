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
  var eventDate: NSDate
  var location: String
  var eventStartTime: String
  var guests = [Guest]()
  
  init(name: String, eventDate: NSDate, location: String, eventStartTime: String){
    self.name = name
    self.eventDate = eventDate
    self.location = location
    self.eventStartTime = eventStartTime
  }
  
  
}