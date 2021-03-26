//
//  ViewController.swift
//  collectionViewDemo
//
//  Created by Jorge Pinedo on 5/26/19.
//  Copyright © 2019 Jorge Pinedo. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    var arrImg=[#imageLiteral(resourceName: "2"),#imageLiteral(resourceName: "2"),#imageLiteral(resourceName: "2"),#imageLiteral(resourceName: "2"),#imageLiteral(resourceName: "2")]
    var arrLabel=["test1","test2","test3","test4","test5"]
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrImg.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.label.text = arrLabel[indexPath.row]
        //cell.image.image = arrImg[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let imageDetail:ImageViewController = self.storyboard?.instantiateViewController(withIdentifier: "ImageViewController") as! ImageViewController
        
        imageDetail.mainImage = arrImg[indexPath.row]
        imageDetail.mainLabel = arrLabel[indexPath.row]
        
        self.navigationController?.pushViewController(imageDetail, animated: true)
    }
    
    


}

