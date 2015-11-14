//
//  PokemonDetailVC.swift
//  pokedex
//
//  Created by Jack Davis on 11/13/15.
//  Copyright © 2015 Nine42 LLC. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

    var pokemon: Pokemon!
    
    @IBOutlet weak var pokeNameLbl: UILabel!
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var defenseLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var pokedexLbl: UILabel!
    @IBOutlet weak var currentEvoImg: UIImageView!
    @IBOutlet weak var nextEvoImg: UIImageView!
    @IBOutlet weak var evoLbl: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        pokeNameLbl.text = pokemon.name.capitalizedString
        mainImg.image = UIImage(named: "\(pokemon.pokedexId)")
        
        pokemon.downloadPokemonDetails { () -> () in
            //this will be called after download is complete
            
        }
    }

    @IBAction func backBtnTapped(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
