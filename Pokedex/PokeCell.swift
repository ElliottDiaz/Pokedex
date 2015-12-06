//
//  PokeCell.swift
//  Pokedex
//
//  Created by Elliott Diaz on 11/22/15.
//  Copyright © 2015 Elliott Diaz. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var pokemon: Pokemon!
    
    //Function to round cell edges
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 10.0
        
    }
    
    func configureCell(pokemon: Pokemon) {
        self.pokemon = pokemon
        
        thumbImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
        nameLabel.text = self.pokemon.name.capitalizedString
        
        
    }
}

