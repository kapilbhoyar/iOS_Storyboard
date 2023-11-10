//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Shadow  on 10/11/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    var myName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        nameLabel.text = myName
        
    }
    

   

}
