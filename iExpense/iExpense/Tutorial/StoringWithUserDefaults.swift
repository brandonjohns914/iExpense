//
//  StoringWithUserDefaults.swift
//  iExpense
//
//  Created by Brandon Johns on 7/13/23.
//

//UserDefaults.standard built in

//storing data in AppStorage is a bad idea 
import SwiftUI

struct StoringWithUserDefaults: View {
   // @State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")
    @AppStorage ("tapCount") private var tapCount = 0
    
    var body: some View {
        Button("Tap count: \(tapCount)") {
            tapCount += 1
            
            //UserDefaults.standard.set(tapCount, forKey: "Tap")
        }
    }
}

struct StoringWithUserDefaults_Previews: PreviewProvider {
    static var previews: some View {
        StoringWithUserDefaults()
    }
}
