//
//  ContentView.swift
//  iExpense
//
//  Created by Brandon Johns on 6/13/23.
//

import SwiftUI




struct ContentView: View
{
    @StateObject var expenses = Expenses()                                      // watch for any changes and view updates
    @State private var showingAddExpense = false
    
    
    var body: some View
    {
        NavigationView {
            List
            {
                ExpenseSection(title: "Business", expenses: expenses.businessItems, deleteItems: removeBusinessItems)
                ExpenseSection(title: "Personal", expenses: expenses.personalItems, deleteItems: removePersonalItems)
            }
            .navigationTitle("iExpense")
            .toolbar {
                Button {
                   showingAddExpense = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            
            .sheet(isPresented: $showingAddExpense) {
                AddView(expenses: expenses)
            }
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView
{
    func removeItems(at offsets: IndexSet, in inputArray: [ExpenseItem])
    {
        var objectsToDelete = IndexSet()
        
        for offset in offsets{
            let item = inputArray[offset]
            
            if let index = expenses.items.firstIndex(of: item) {
                objectsToDelete.insert(index)
            }
        }
        
        expenses.items.remove(atOffsets: objectsToDelete)
    }
    
    func removePersonalItems(at offsets: IndexSet)
    {
        removeItems(at: offsets, in: expenses.personalItems)
    }
    
    func removeBusinessItems(at offsets: IndexSet) {
        removeItems(at: offsets, in: expenses.businessItems)
    }
}
