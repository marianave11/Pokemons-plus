//
//  TeamPokemons.swift
//  Pokemons-plus
//
//  Created by mvalencia on 20/10/22.
//

import Foundation
class TeamPokemons: Codable {
    let count: Int?
    let next, previous: String?
    let results: [Specie]?
}
