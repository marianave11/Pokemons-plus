//
//  CustomView.swift
//  Pokemons-plus
//
//  Created by mvalencia on 20/10/22.
//

import UIKit

final class CustomView: UIView {
    
    
    @IBOutlet private weak var titleLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configureView()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.configureView()
    }
    private func configureView() {
        guard let view = self.loadViewFromDid(nibName: "CustomView") else { return }
        view.frame = self.bounds
        self.addSubview(view)
    }
    func configureView(title: String) {
        self.titleLabel.text = title
    }
}
