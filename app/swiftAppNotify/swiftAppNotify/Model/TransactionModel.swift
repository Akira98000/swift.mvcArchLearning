//
//  TransactionModel.swift
//  swiftAppNotify
//
//  Created by Akira Santhakumaran on 4/25/24.
//

import Foundation

class TransactionModel: ObservableObject {
    @Published var transactions: [Transaction] = [
        Transaction(title: "Achat 1", amount: 20.0),
        Transaction(title: "Achat 2", amount: 30.0),
        Transaction(title: "Achat 3", amount: 25.0),
        Transaction(title: "Achat 2", amount: 30.0),
        Transaction(title: "Achat 3", amount: 25.0),
        Transaction(title: "Achat 2", amount: 30.0),
        Transaction(title: "Achat 3", amount: 25.0),
        Transaction(title: "Achat 2", amount: 30.0),
        Transaction(title: "Achat 3", amount: 25.0),
        Transaction(title: "Achat 2", amount: 30.0),
        Transaction(title: "Achat 3", amount: 25.0),
        Transaction(title: "Achat 2", amount: 30.0),
        Transaction(title: "Achat 3", amount: 25.0),
    ]
}
