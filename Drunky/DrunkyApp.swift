//
//  DrunkyApp.swift
//  Drunky
//
//  Created by Daniel Atitienei on 27.03.2025.
//

import SwiftUI
import RevenueCat

@main
struct DrunkyApp: App {
    
    init() {
        Purchases.logLevel = .debug
        Purchases.configure(withAPIKey: "appl_ttFwdzQGKbElRZhWuzkxeKPkahi")
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
