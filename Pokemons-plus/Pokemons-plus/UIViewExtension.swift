//
//  UIViewExtension.swift
//  Pokemons-plus
//
//  Created by mvalencia on 20/10/22.
//

import Foundation
import UIKit
extension UIView {
    
    func loadViewFromDid(nibName: String) -> UIView? {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
}
