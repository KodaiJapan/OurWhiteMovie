//
//  SideBarView.swift
//  WhiteMovie
//
//  Created by 吉田晃大 on 2023/05/12.
//

import SwiftUI

struct SideBarView: View {
    @AppStorage("selectedTab") var selectedTab : NavigationModel = ._home
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "person")
                    .padding(12)
                    .background(.white.opacity(0.2))
                    .mask(Circle())
                VStack(alignment:.leading, spacing: 2) {
                    Text("Shiratani Taro")
                    Text("24 years old")
                }
                Spacer()
            }
            .padding()
            
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    ForEach(menuItems) { item in
                        Rectangle()
                            .frame(height: 1)
                            .opacity(0.3)
                            .padding(.horizontal)
                        //MenuRowを入れる
                        MenuRow(item: item, selectedTab: $selectedTab)
                    }
                }
            }
            .padding(8)
            Spacer()
        }
        .foregroundColor(.white)
        .frame(maxWidth:288, maxHeight: .infinity)
        .background(Color(red: 0, green: 0.4, blue: 0.8))
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct SideBarView_Previews: PreviewProvider {
    static var previews: some View {
        SideBarView()
    }
}
