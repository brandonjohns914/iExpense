//
//  ObjectsInCodable.swift
//  iExpense
//
//  Created by Brandon Johns on 7/13/23.
//

//Codable archive/unarchive user instances

// encoder saves user instance in json  data 

import SwiftUI
struct user: Codable {
    let firstName: String
    let lastName: String
}
struct ObjectsInCodable: View {
    @State private var users = user(firstName: "Taylor", lastName: "Swift")
    var body: some View {
        Button("Save User") {
            let encoder = JSONEncoder()

            if let data = try? encoder.encode(users) {
                UserDefaults.standard.set(data, forKey: "UserData")
            }
        }
    }
}

struct ObjectsInCodable_Previews: PreviewProvider {
    static var previews: some View {
        ObjectsInCodable()
    }
}
