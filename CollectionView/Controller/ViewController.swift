//
//  ViewController.swift
//  CollectionView
//
//  Created by Ivan on 31.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var itemMenuArray: [Menu] = {
        var blankMenu = Menu()
        blankMenu.name = "Apples"
        blankMenu.imageName = "apple"
        
        var blankMenu1 = Menu()
        blankMenu1.name = "Cherries"
        blankMenu1.imageName = "cherry"
        
        var blankMenu2 = Menu()
        blankMenu2.name = "Grapes"
        blankMenu2.imageName = "grapes"
        
        var blankMenu3 = Menu()
        blankMenu3.name = "Pears"
        blankMenu3.imageName = "pear"
        
        var blankMenu4 = Menu()
        blankMenu4.name = "Plums"
        blankMenu4.imageName = "plum"
        
        var blankMenu5 = Menu()
        blankMenu5.name = "Strawberries"
        blankMenu5.imageName = "strawberry"
        
        return [blankMenu, blankMenu1, blankMenu2, blankMenu3, blankMenu4, blankMenu5]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "fruitVC" {
            if let vc = segue.destination as? DetailViewController {
                let menu = sender as? Menu
                print(menu ?? "nil")
                vc.menu = menu
            }
        }
    }
    
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemMenuArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let itenCell = collectionView.dequeueReusableCell(withReuseIdentifier: "fruitCell", for: indexPath) as? ItemCollectionViewCell {
            
            itenCell.menu = itemMenuArray[indexPath.row]
            return itenCell
        }
        return UICollectionViewCell()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let menu = itemMenuArray[indexPath.row]
        self.performSegue(withIdentifier: "fruitVC", sender: menu)
        
//        let storyboard = UIStoryboard(name: "Main", bundle: nil) // Замените "Main" на имя вашей сториборд
//            if let detailViewController = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController {
//                detailViewController.menu = menu
//                navigationController?.pushViewController(detailViewController, animated: true)
//            }
     }
    
}


