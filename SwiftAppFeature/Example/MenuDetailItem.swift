//
//  MenuDetailItem.swift
//  SwiftAppFeature
//
//  Created by fozza on 2024/6/20.
//

import SwiftUI

struct MenuDetailItem: View {
    let item: MenuItem
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                Text("Photo: \(item.photoCredit)")
                    .padding(40)
                    .background(.black)
                    .font(.caption)
                    .foregroundStyle(.white)
                    .offset(x: -5, y: -5)
            }
            Text(item.description)
            Spacer()
        }
        .navigationTitle(item.name)
    }
}

#Preview {
    MenuDetailItem(item: MenuItem.example)
}
