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
            Text("Tab 1")
                .tabItem {
                    Label("Tab 1", systemImage: "1.circle")
                }
            Text("Tab 2")
                .tabItem {
                    Label("Tab 2", systemImage: "1.circle")
                }
        }
    }
}

#Preview {
    ContentView()
}
