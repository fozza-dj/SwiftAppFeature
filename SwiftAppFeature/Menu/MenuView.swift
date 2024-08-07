//
//  ExampleView.swift
//  SwiftAppFeature
//
//  Created by fozza on 2024/6/16.
//

import SwiftUI

struct MenuView: View {
    let menu = Bundle.main.decode([MenuSection].self, from:
    "menu.json")
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(menu) { section in
                    Section(section.name) {
                        ForEach(section.items) { item in
                            NavigationLink(value: item) {
                                MenuItemRow(item: item)
                            }
                        }
                    }
                }
            }
            .navigationDestination(for: MenuItem.self) { item in
                MenuDetailItem(item: item)
            }
            .navigationTitle("Menu")
            .listStyle(.grouped)
        }
    }
}

#Preview {
    MenuView()
}
