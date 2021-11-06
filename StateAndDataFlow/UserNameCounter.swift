//
//  UserNameCounter.swift
//  StateAndDataFlow
//
//  Created by Vladimir Izmaylov on 06.11.2021.
//

import SwiftUI

class UserNameCounter: ObservableObject {
    
    func changeColorForText(_ count: Int) -> Color {
        count >= 3 ? .green : .red
    }
    
    func changeColorForButton(_ count: Int) -> Color {
        count >= 3 ? .blue : .gray
    }
    
    func hideButton(_ count: Int) -> Bool {
        count >= 3 ? false : true
    }
}

