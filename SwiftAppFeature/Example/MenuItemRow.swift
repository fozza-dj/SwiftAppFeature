//
//  ExampleItemRow.swift
//  SwiftAppFeature
//
//  Created by fozza on 2024/6/17.
//

import SwiftUI

struct MenuItemRow: View {
    let item: MenuItem
    
    var body: some View {
        NavigationLink {
            MenuDetailItem(item: item)
        } label: {
            HStack {
                Image(item.thumbnailImage)
                VStack(alignment: .leading) {
                    Text(item.name)
                    Text("$\(item.price)")
                }
            }
        }
        
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemRow(item: MenuItem.example)
    }
}
