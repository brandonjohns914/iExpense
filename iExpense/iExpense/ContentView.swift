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
                ForEach(expenses.items) { item in
                    HStack {
                        VStack {
                            Text(item.name)
                                .font(.headline)
                            Text(item.type)
                        }
                        Spacer()
                        
                        Text(item.amount, format: .currency(code: "USD"))
                    }
                }
                .onDelete(perform: removeItems)
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
    func removeItems(at offsets: IndexSet)
    {
        expenses.items.remove(atOffsets: offsets)
    }
}
