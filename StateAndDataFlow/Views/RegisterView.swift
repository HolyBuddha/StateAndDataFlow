//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 01.11.2021.
//

import SwiftUI

struct RegisterView: View {
    @State private var userName = ""
    @StateObject private var userNameCounter = UserNameCounter()
    
    @EnvironmentObject private var dataManager: DataManager
    
    var body: some View {
        VStack {
            HStack{
                TextField("Enter your name...", text: $userName)
                    .multilineTextAlignment(.center)
                    .padding(.trailing, -80)
                Text("\(userName.count)")
                    .multilineTextAlignment(.center)
                    .padding(.trailing, 40)
                    .foregroundColor(userNameCounter.changeColorForText(userName.count)
                    )
            }
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
                .foregroundColor(userNameCounter.changeColorForButton(userName.count))
            }
            .disabled(userNameCounter.hideButton(userName.count))
        }
    }
    
    private func registerUser() {
        if userName.count >= 3 {
            dataManager.createNewUser(userName)
        } else {
            return
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
