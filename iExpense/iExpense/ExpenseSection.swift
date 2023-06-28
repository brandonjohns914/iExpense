//
//  ExpenseSection.swift
//  iExpense
//
//  Created by Brandon Johns on 6/28/23.
//

import SwiftUI

struct ExpenseSection: View {
    
    let title: String
    
    let expenses: [ExpenseItem]
    
    let deleteItems: (IndexSet) -> Void 
    
    var body: some View {
        Section(title) {
            ForEach(expenses) { item in
                HStack {
                    VStack {
                        Text(item.name)
                            .font(.headline)
                        Text(item.type)
                    }
                    Spacer()
                    
                    Text(item.amount, format: .localCurrency)
                        .style(for: item)
                }
            }
            .onDelete(perform: deleteItems)
        }
    }
}

struct ExpenseSection_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseSection(title: "Example", expenses: []) { _ in }
    }
}
