//
//  MenuRow.swift
//  WhiteMovie
//
//  Created by 吉田晃大 on 2023/05/12.
//

import SwiftUI

struct MenuRow: View {
    var item: MenuItem
    @Binding var selectedTab: NavigationModel
    
    var body: some View {
        HStack(spacing: 14) {
            Text(item.text)
                .font(.headline)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(12)
        .background(RoundedRectangle(cornerRadius: 10, style: .continuous)
            .fill(.blue)
            .frame(maxWidth:selectedTab == item.menu ? .infinity : 0)
            .frame(maxWidth: .infinity, alignment: .leading)
        )
        .background(Color(red: 0, green: 0.4, blue: 0.8))
        .onTapGesture {
            withAnimation(.timingCurve(0.2, 0.8, 0.2, 1)){
                selectedTab = item.menu
            }
        }
    }
}

struct MenuRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuRow(item: menuItems[0], selectedTab:.constant(._home))
    }
}
