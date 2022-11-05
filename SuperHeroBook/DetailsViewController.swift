//
//  DetailsViewController.swift
//  SuperHeroBook
//
//  Created by Enes Ayvaz on 4.11.2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var chosenHeroImage = ""
    var chosenHeroName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: chosenHeroImage )
        label.text = chosenHeroName

        // Do any additional setup after loading the view.
    }
    

    

}
