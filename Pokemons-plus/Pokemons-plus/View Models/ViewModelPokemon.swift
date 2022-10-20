//
//  ViewModelPokemon.swift
//  Pokemons-plus
//
//  Created by mvalencia on 20/10/22.
//

import Foundation
import SwiftUI
class ViewModelPokemon {
    
    public static var shared = ViewModelPokemon()
    
    
    func getPokemon(completion: @escaping (_ done:Bool) -> String){
        print("Hola")
        guard let url = URL(string: "\(Apis.BASE_API_URL)pokemon/ditto")else { return  }
        URLSession.shared.dataTask(with: url){data,_,_ in
            
            guard let data = data else { return }
            do{
                let json = try JSONDecoder().decode(Pokemon.self, from: data)
                DispatchQueue.main.async {
                   print(json)
                    completion(true)
                  
                }
            }catch let error as NSError{
                print("Error en el json", error.localizedDescription)
            }
        }.resume()
    }
}
