//
//  SwiftAppFeatureApp.swift
//  SwiftAppFeature
//
//  Created by fozza on 2024/5/28.
//

import SwiftUI

@main
struct SwiftAppFeatureApp: App {
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            MenuView()
                .environmentObject(order)
        }
    }
}
