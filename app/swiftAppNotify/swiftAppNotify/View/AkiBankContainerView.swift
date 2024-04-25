//
//  AkiBankContainerView.swift
//  swiftAppNotify
//
//  Created by Akira Santhakumaran on 4/25/24.
//

import Foundation
import UIKit

class AkiBankContainerView: UIView {
    
    // Properties
    let model: AkiBankModel
    
    // Initializer
    init(model: AkiBankModel) {
        self.model = model
        super.init(frame: .zero)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Setup views
    private func setupViews() {
        // Scroll view
        let scrollView = UIScrollView()
        addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: leadingAnchor),
            scrollView.topAnchor.constraint(equalTo: topAnchor),
            scrollView.trailingAnchor.constraint(equalTo: trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        // Container view
        let containerView = UIView()
        scrollView.addSubview(containerView)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            containerView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            containerView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            containerView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            containerView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
        
        // Username label
        let usernameLabel = createLabel(withText: "Utilisateur: \(model.username)", isBold: true)
        containerView.addSubview(usernameLabel)
        
        // Contract type label
        let contractTypeLabel = createLabel(withText: "Type de contrat: \(model.contractType)")
        containerView.addSubview(contractTypeLabel)
        
        // Current balance label
        let currentBalanceLabel = createLabel(withText: "Solde actuel: \(model.currentBalance) €")
        containerView.addSubview(currentBalanceLabel)
        
        // Recent transactions label
        let recentTransactionsLabel = createLabel(withText: "Dernières transactions:")
        containerView.addSubview(recentTransactionsLabel)
        
        // Add recent transactions
        var previousLabel: UILabel?
        for transaction in model.recentTransactions {
            let transactionLabel = createLabel(withText: "\(transaction.date) - \(transaction.description) : \(transaction.amount) €")
            containerView.addSubview(transactionLabel)
            NSLayoutConstraint.activate([
                transactionLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16),
                transactionLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -16),
                transactionLabel.topAnchor.constraint(equalTo: previousLabel?.bottomAnchor ?? recentTransactionsLabel.bottomAnchor, constant: 8)
            ])
            previousLabel = transactionLabel
        }
        
        // Setup constraints for labels
        NSLayoutConstraint.activate([
            usernameLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16),
            usernameLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 16),
            contractTypeLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16),
            contractTypeLabel.topAnchor.constraint(equalTo: usernameLabel.bottomAnchor, constant: 8),
            currentBalanceLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16),
            currentBalanceLabel.topAnchor.constraint(equalTo: contractTypeLabel.bottomAnchor, constant: 16),
            recentTransactionsLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16),
            recentTransactionsLabel.topAnchor.constraint(equalTo: currentBalanceLabel.bottomAnchor, constant: 16),
            recentTransactionsLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -16)
        ])
    }
    
    // Helper method to create labels
    private func createLabel(withText text: String, isBold: Bool = false) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = isBold ? UIFont.boldSystemFont(ofSize: 16) : UIFont.systemFont(ofSize: 16)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
}
