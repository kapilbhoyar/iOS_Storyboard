//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Shadow  on 15/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var isColdplay = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
        
    }
    
    @objc func changePic() {
        
        if isColdplay == true {
            imageView.image = UIImage(named: "worldTour")
            myLabel.text = "Coldplay World Tour"
            isColdplay = false
        } else {
            imageView.image = UIImage(named: "Coldplay")
            myLabel.text = "Coldplay"
            isColdplay = true
        }
        
//        print("tapped")
        
        
    }


}

