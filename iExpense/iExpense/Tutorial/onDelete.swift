//
//  onDelete.swift
//  iExpense
//
//  Created by Brandon Johns on 7/13/23.
//

import SwiftUI

struct onDelete: View {
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(numbers, id: \.self){
                        Text("Row \($0)")
                    }
                    .onDelete(perform: removeRoles)
                }
                
                Button("Add Number ") {
                    numbers.append(currentNumber)
                    currentNumber += 1
                }
            }
            .navigationTitle("onDelete()")
            .toolbar {
                EditButton()
            }
        }
    }
    
    func removeRoles(at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
        
    }
    
}

struct onDelete_Previews: PreviewProvider {
    static var previews: some View {
        onDelete()
    }
}
