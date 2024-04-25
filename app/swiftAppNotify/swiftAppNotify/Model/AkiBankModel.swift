//
//  AkiBankModel.swift
//  swiftAppNotify
//
//  Created by Akira Santhakumaran on 4/25/24.
//

import Foundation
import SwiftUI

struct AkiBankModel {
    let username: String
    let contractType: String
    let currentBalance: Double
    let recentTransactions: [Transaction]
    
    static func exampleModel() -> AkiBankModel {
        let Transactions = [
            Transaction(date: Date(), amount: -30.5, description: "Achat en ligne"),
            Transaction(date: Date().addingTimeInterval(-86400), amount: 100.0, description: "Dépôt d'argent"),
            Transaction(date: Date().addingTimeInterval(-172800), amount: -20.0, description: "Retrait au distributeur")
        ]
        
        return AkiBankModel(
            username: "Akira",
            contractType: "Visa Premium Luxe",
            currentBalance: 500.0,
            recentTransactions: Transactions
        )
    }
}
