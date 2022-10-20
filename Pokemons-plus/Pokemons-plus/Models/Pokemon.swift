//
//  Pokemon.swift
//  Pokemons-plus
//
//  Created by mvalencia on 18/10/22.
//

import Foundation
struct Pokemon: Codable {
    let abilities: [Ability]?
    let baseExperience: Int?
    let height: Int?
    let id: Int?
    let name: String?
    let weight: Int?

}
