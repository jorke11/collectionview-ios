//
//  ImageViewController.swift
//  collectionViewDemo
//
//  Created by Jorge Pinedo on 5/26/19.
//  Copyright © 2019 Jorge Pinedo. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var imageDetail: UIImageView!
    @IBOutlet weak var labelDetail: UILabel!
    
    var mainImage:UIImage!
    var mainLabel:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageDetail.image = mainImage
        labelDetail.text = mainLabel
    }
    

  

}
