//
//  ViewController.swift
//  CatchLuffyGame
//
//  Created by Shadow  on 24/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    var score = 0
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    
    @IBOutlet weak var luffy1: UIImageView!
    @IBOutlet weak var luffy2: UIImageView!
    @IBOutlet weak var luffy3: UIImageView!
    @IBOutlet weak var luffy4: UIImageView!
    @IBOutlet weak var luffy5: UIImageView!
    @IBOutlet weak var luffy6: UIImageView!
    @IBOutlet weak var luffy7: UIImageView!
    @IBOutlet weak var luffy8: UIImageView!
    @IBOutlet weak var luffy9: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = "Score: \(score)"
        

        luffy1.isUserInteractionEnabled = true
        luffy2.isUserInteractionEnabled = true
        luffy3.isUserInteractionEnabled = true
        luffy4.isUserInteractionEnabled = true
        luffy5.isUserInteractionEnabled = true
        luffy6.isUserInteractionEnabled = true
        luffy7.isUserInteractionEnabled = true
        luffy8.isUserInteractionEnabled = true
        luffy9.isUserInteractionEnabled = true

        let recognizer1 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer2 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer3 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer4 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer5 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer6 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer7 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer8 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer9 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        
        luffy1.addGestureRecognizer(recognizer1)
        luffy2.addGestureRecognizer(recognizer2)
        luffy3.addGestureRecognizer(recognizer3)
        luffy4.addGestureRecognizer(recognizer4)
        luffy5.addGestureRecognizer(recognizer5)
        luffy6.addGestureRecognizer(recognizer6)
        luffy7.addGestureRecognizer(recognizer7)
        luffy8.addGestureRecognizer(recognizer8)
        luffy9.addGestureRecognizer(recognizer9)

        
        
    }
    
    @objc func increaseScore() {
        score += 1
        scoreLabel.text = "Score: \(score)"
    }


}

