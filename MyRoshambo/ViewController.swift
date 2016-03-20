//
//  ViewController.swift
//  MyRoshambo
//
//  Created by Anna Hull on 3/19/16.
//  Copyright © 2016 Anna Hull. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Programmatic Approach
    @IBAction func playRock(sender: UIButton) {
        let vc = self.storyboard?.instantiateViewControllerWithIdentifier("ResultsVC") as! ResultsVC
        vc.userChoice = sender.titleLabel!.text
        presentViewController(vc, animated: true, completion: nil)
    }
    
    // Segue with Code Approach
    @IBAction func playPaper(sender: UIButton) {
        performSegueWithIdentifier("play", sender: sender)
    }
    
    // Segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "play" {
            let vc = segue.destinationViewController as! ResultsVC
            vc.userChoice = sender!.titleLabel!!.text
        }
    }
}



