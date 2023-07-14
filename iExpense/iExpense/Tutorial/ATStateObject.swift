//
//  ATStateObject.swift
//  iExpense
//
//  Created by Brandon Johns on 7/12/23.
//

//class tos hare across many swiftUI views

// @Published states any views using these need to reloaded

//@StateObject it tells SwiftUI that we’re creating a new class instance that should be watched for any change

//@ObservedObject is used to share one class with another class
import SwiftUI


class User: ObservableObject {
    @Published var firstName = "Bilbo"
    @Published var lastName = "Baggins"
}

struct ATStateObject: View {
    @StateObject private var user = User()

    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName)")
            
            TextField("First name: ", text: $user.firstName)
            TextField("Last name: ", text: $user.lastName)
        }
    }
}

struct ATStateObject_Previews: PreviewProvider {
    static var previews: some View {
        ATStateObject()
    }
}
