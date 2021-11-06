//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 01.11.2021.
//

import SwiftUI

final class DataManager: ObservableObject {
    
    @AppStorage("isRegistered") private var isRegistered: Bool?
    @AppStorage("username") private var name = ""
    
    func userIsRegister() -> Bool {
        isRegistered ?? false
    }
    
    func createNewUser(_ name: String) {
        isRegistered = true
        self.name = name
    }
    func getUserName() -> String {
        name
    }
    
    func logOut() {
        isRegistered = false
        name = ""
    }
}
