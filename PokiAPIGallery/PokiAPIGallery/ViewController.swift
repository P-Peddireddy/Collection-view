//
//  ViewController.swift
//  PokiAPIGallery
//
//  Created by Cambrian on 2022-03-21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pokeimage: UIImageView!
    
    // Collection View to show all pokemon images
    @IBOutlet weak var pokemonCollectionView: UICollectionView!
    
    // Pokemon images list
    var pokemonImagesList: [UIImage] = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PokeAPIHelper.fetchAllImages { images in
            self.pokemonImagesList = images
            
            /// Reloads data in collection view
            self.pokemonCollectionView.reloadData()
        }
    }
}

/// UICollectionViewDataSource
extension ViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pokemonImagesList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PokemonCollectionCell", for: indexPath) as! PokemonCollectionCell
        cell.pokemonImageView.image = pokemonImagesList[indexPath.item]
        return cell
    }

}

