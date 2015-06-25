//
//  HomeViewController.swift
//  Dinner Party
//
//  Created by Matthew McClure on 6/22/15.
//  Copyright (c) 2015 Matthew McClure. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

  @IBOutlet weak var upcomingEvent1: UILabel!
 
  @IBOutlet weak var upcomingEvent2: UILabel!
  
  @IBOutlet weak var upcomingEvent3: UILabel!
  
  @IBOutlet weak var upcomingEvent4: UILabel!
  
  
    override func viewDidLoad() {
        super.viewDidLoad()
      //sets background gradient
      let background = CAGradientLayer().colorFade()
      background.frame = self.view.bounds
      self.view.layer.insertSublayer(background, atIndex: 0)
      self.view.backgroundColor = UIColor(patternImage: UIImage(named: "forkSpoonFull.png")!)
//      upcomingEvent1.layer.borderColor =  UIColor.whiteColor().CGColor
//      upcomingEvent1.layer.borderWidth = 0.3
//      upcomingEvent2.layer.borderColor =  UIColor.whiteColor().CGColor
//      upcomingEvent2.layer.borderWidth = 0.3
//      upcomingEvent3.layer.borderColor =  UIColor.whiteColor().CGColor
//      upcomingEvent3.layer.borderWidth = 0.3
//      upcomingEvent4.layer.borderColor =  UIColor.whiteColor().CGColor
//      upcomingEvent4.layer.borderWidth = 0.3
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
