//
//  Services.swift
//  Pokemons-plus
//
//  Created by mvalencia on 19/10/22.
//

import Foundation
import UIKit
class Services {
    
    func getPokemon() -> Void {
      
        let urlSession = URLSession.shared
        let url = URL(string: "\(Apis.BASE_API_URL)pokemon/ditto")
        urlSession.dataTask(with: url!) { data, response, error in
            do {
                if let data = data {
                    let pokemon = try JSONDecoder().decode(Pokemon.self, from: data)
                }
            } catch {
                print("JSONSerialization error:", error)
            }
        }.resume()
    }
    
    func getImagePokemon(idPokemon: String) -> Void {
        let urlSession = URLSession.shared
        let url = URL(string: "\(Apis.BAE_API_URL_IMAGE)\(idPokemon).png")
        urlSession.dataTask(with: url!) { data, response, error in
            if let err = error {
                print("Error: \(err)")
            }
            if let http = response as? HTTPURLResponse {
                if http.statusCode == 200 {
                    _ = UIImage(data: data!)
                    
                }
                
            }
            
        }.resume()
    }
    
    func getListPokemons() -> Void {
      
        let urlSession = URLSession.shared
        let url = URL(string: "\(Apis.BASE_API_URL)pokemon?limit=10&offset=0")
        urlSession.dataTask(with: url!) { data, response, error in
            do {
                if let data = data {
                    _ = try JSONDecoder().decode(TeamPokemons.self, from: data)
                }
            } catch {
                print("JSONSerialization error:", error)
            }
        }.resume()
    }

}
