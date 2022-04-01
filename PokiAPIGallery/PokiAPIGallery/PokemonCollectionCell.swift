//
//  PokemonCollectionCell.swift
//  PokiAPIGallery
//
//  Created by Prathi on 30/03/22.
//

import UIKit

/// Custom Collection view cell used to show pokemon images
class PokemonCollectionCell: UICollectionViewCell {
    @IBOutlet weak var pokemonImageView: UIImageView!
    
    func setUpPockemonImagee(with image: UIImage) {
        pokemonImageView.image = image
    }
}
