//
//  DetailViewController.swift
//  CollectionView
//
//  Created by Ivan on 31.05.2023.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView! {
        didSet {
            if let image = menu?.imageName {
                imageView.image = UIImage(named: image)
            }
        }
    }
    @IBOutlet weak var nameLabel: UILabel! {
        didSet {
            nameLabel.text = menu?.name
        }
    }
    
    var menu: Menu?
    
    
}
