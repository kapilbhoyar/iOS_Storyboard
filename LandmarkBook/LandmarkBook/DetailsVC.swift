//
//  DetailsVC.swift
//  LandmarkBook
//
//  Created by Shadow  on 22/12/23.
//

import UIKit

class DetailsVC: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var landmarkLabel: UILabel!
    
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        landmarkLabel.text = selectedLandmarkName
        imageView.image = selectedLandmarkImage
        
    }
    

    
}
