//
//  ResultsVC.swift
//  MyRoshambo
//
//  Created by Anna Hull on 3/19/16.
//  Copyright © 2016 Anna Hull. All rights reserved.
//

import UIKit

func randomShape() -> String {
    let shapes = ["rock", "paper", "scissors"]
    let randomChoice = Int(arc4random_uniform(3))
    return shapes[randomChoice]
}

class ResultsVC: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!

    var userChoice: String!
    let opponentChoice =  randomShape()

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        displayResult()
    }

    func displayResult( ) {
        var text: String
        let matchup = "\(userChoice) vs. \(opponentChoice)"
        
        switch (userChoice!, opponentChoice) {
            case let (user, opponent) where user == opponent:
                text = "\(matchup): it's a tie!"
            case ("rock", "scissors"), ("paper", "rock"), ("scissors", "paper"):
                text = "You win with \(matchup)!"
            default:
                text = "You lose with \(matchup) :(."
        }

        resultLabel.text = text
    }

    @IBAction func playAgain() {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
