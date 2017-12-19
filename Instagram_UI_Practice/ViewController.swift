//
//  ViewController.swift
//  Instagram_UI_Practice
//
//  Created by Anand on 18/12/17.
//  Copyright © 2017 Rahul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var collectionView: UICollectionView!
    
//    let ProfileImage = UIImage(named: "instagram")

    let PostImages = ["RedBay", "tesla2020", "Tesla-Model-S", "tesla roadster"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! ShowTable
        cell.profileImg.image = UIImage(named: "instagram")
        cell.profileImg?.layer.cornerRadius = (cell.profileImg?.frame.size.width)! / 2
        cell.profileImg?.layer.masksToBounds = true
        
        
        return cell
    }

}


extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return PostImages.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! ShowCollection
        
        cell.postImg.layer.cornerRadius = cell.postImg.frame.size.height / 2
        cell.postImg.layer.masksToBounds = true
//        cell.postImg.layer.borderWidth = 0
        
        cell.postImg.image = UIImage(named: PostImages[indexPath.row])
        
        return cell
    }

    
}




















