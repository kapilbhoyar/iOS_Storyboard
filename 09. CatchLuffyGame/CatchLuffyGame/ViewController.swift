//
//  ViewController.swift
//  CatchLuffyGame


import UIKit

class ViewController: UIViewController {
    
    //Variables
    var score = 0
    var timer = Timer()
    var counter = 0
    var luffyArray = [UIImageView]()
    var hideTimer = Timer()
    var highScore = 0
    
    //Views
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
        
        //Highscore check
        let storedHighScore = UserDefaults.standard.object(forKey: "highscore")
        
        if storedHighScore == nil {
            highScore = 0
            highScoreLabel.text = "Highscore: \(highScore)"
        }
        
        if let newScore = storedHighScore as? Int {
            highScore = newScore
            highScoreLabel.text = "Highscore: \(highScore)"
        }
        

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
        
        luffyArray = [luffy1, luffy2, luffy3, luffy4, luffy5, luffy6, luffy7, luffy8, luffy9]

        //Timers
        counter = 10
        timeLabel.text = String(counter)
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDown), userInfo: nil, repeats: true)
        hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(hideLuffy), userInfo: nil, repeats: true)
        
        hideLuffy()
        
    }
    
    @objc func hideLuffy() {
        
        for luffy in luffyArray {
            luffy.isHidden = true
        }
        
        let random = Int(arc4random_uniform(UInt32(luffyArray.count - 1)))
        luffyArray[random].isHidden = false
        
    }
    
    @objc func increaseScore() {
        score += 1
        scoreLabel.text = "Score: \(score)"
    }

    @objc func countDown() {
        
        counter -= 1
        timeLabel.text = String(counter)
        
        for luffy in luffyArray {
            luffy.isHidden = true
        }
        
        //HighScore
        if self.score > self.highScore {
            self.highScore = self.score
            highScoreLabel.text = "Highscore: \(self.highScore)"
            UserDefaults.standard.set(self.highScore, forKey: "highscore")
        }
        
        if counter == 0 {
            timer.invalidate()
            hideTimer.invalidate()
            
            let alert = UIAlertController(title: "Time's Up", message: "Do you want to play again?", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            
            let replayButton = UIAlertAction(title: "Replay", style: UIAlertAction.Style.default) { UIAlertAction in
                
                //replay function
                self.score = 0
                self.scoreLabel.text = "Score: \(self.score)"
                self.counter = 10
                self.timeLabel.text = String(self.counter)
                
                self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.countDown), userInfo: nil, repeats: true)
                self.hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(self.hideLuffy), userInfo: nil, repeats: true)
                
            }
            alert.addAction(okButton)
            alert.addAction(replayButton)
            self.present(alert, animated: true, completion: nil)
            
        }
        
    }

}

