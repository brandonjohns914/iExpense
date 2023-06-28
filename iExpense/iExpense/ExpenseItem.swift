//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Brandon Johns on 6/27/23.
//

import Foundation
// Identifiable means that are unique and have an id
// allows the removal of , id: \.id from the for each 
struct ExpenseItem: Identifiable, Codable ,Equatable 
{
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
    
}
