//
//  AkiBankViewController.swift
//  swiftAppNotify
//
//  Created by Akira Santhakumaran on 4/25/24.
//

import Foundation
import UIKit

class AkiBankViewController: UIViewController {
    
    // Properties
    var containerView: AkiBankContainerView!
    
    // Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialisation du modèle avec des données d'exemple
        let model = AkiBankModel.exampleModel()
        
        // Création de la vue avec le modèle
        containerView = AkiBankContainerView(model: model)
        view.addSubview(containerView)
        
        // Layout de la vue
        containerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            containerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            containerView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16)
        ])
    }
}
