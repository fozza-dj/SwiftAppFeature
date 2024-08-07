//
//  ContentView.swift
//  SwiftAppFeature
//
//  Created by fozza on 2024/5/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MenuView()
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
            OrderView()
                .tabItem {
                    Label("Order", systemImage: "square.and.pencil")
                }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(Order())
}
