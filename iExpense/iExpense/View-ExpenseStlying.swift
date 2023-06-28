//
//  View-ExpenseStlying.swift
//  iExpense
//
//  Created by Brandon Johns on 6/28/23.
//

import SwiftUI

extension View {
    
    func style(for item: ExpenseItem) -> some View {
        if item.amount < 10 {
            return self.font(.body)
        }
        else if item.amount < 100 {
            return self.font(.title3)
        }
        else
        {
            return self.font(.title)
        }
    }
}
