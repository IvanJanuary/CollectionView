//
//  ItemCollectionViewCell.swift
//  CollectionView
//
//  Created by Ivan on 31.05.2023.
//

import UIKit

class ItemCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var menu: Menu? {
        didSet {
            guard let image = menu?.imageName else { return }
            imageView.image = UIImage(named: image)
            nameLabel.text = menu?.name
        }
    }
    
}
