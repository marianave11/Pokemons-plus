//
//  Ability.swift
//  Pokemons-plus
//
//  Created by mvalencia on 19/10/22.
//

import Foundation
struct Ability: Codable {
    let ability: Specie
    let isHidden: Bool?
    let slot: Int
}
