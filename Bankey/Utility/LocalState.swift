//
//  LocalState.swift
//  Bankey
//
//  Created by Piyush Pandey on 02/01/25.
//

import Foundation

final class LocalState {
    
    private enum Keys: String {
        case hasOnboarded
    }
    
    static var hasOnboarded: Bool {
        get {
            return UserDefaults.standard.bool(forKey: Keys.hasOnboarded.rawValue)
        } set(newValue) {
            UserDefaults.standard.set(newValue, forKey: Keys.hasOnboarded.rawValue)
        }
    }
}
