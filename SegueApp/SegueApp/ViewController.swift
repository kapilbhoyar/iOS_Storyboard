//
//  ViewController.swift
//  SegueApp
//
//  Created by Shadow  on 10/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    var userName = ""

    @IBOutlet weak var nameText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func nextClicked(_ sender: Any) {
        
        userName = nameText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            
            let desinationVC = segue.destination as! SecondViewController
            desinationVC.myName = "Name: \(userName)"
        }
    }
    
}

