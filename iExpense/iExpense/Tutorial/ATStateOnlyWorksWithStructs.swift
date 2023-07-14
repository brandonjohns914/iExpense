//
//  ATStateOnlyWorksWithStructs.swift
//  iExpense
//
//  Created by Brandon Johns on 7/12/23.
//

// user changed to class the value wont update with @State only works with structs
//@State invokes body to update with any changes



import SwiftUI


struct Users {
    var firstName = "Bilbo"
    var lastName = "Baggins"
}
struct ATStateOnlyWorksWithStructs: View {
    
    @State private var user = Users()
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName)")
            
            TextField("First name: ", text: $user.firstName)
            TextField("Last name: ", text: $user.lastName)
        }
    }
}

struct ATStateOnlyWorksWithStructs_Previews: PreviewProvider {
    static var previews: some View {
        ATStateOnlyWorksWithStructs()
    }
}
