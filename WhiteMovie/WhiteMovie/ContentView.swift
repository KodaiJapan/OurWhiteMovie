//
//  ContentView.swift
//  WhiteMovie
//
//  Created by 吉田晃大 on 2023/04/10.
//

import SwiftUI
import Foundation

struct ContentView: View {
    @AppStorage("selectedTab") var selectedTab : NavigationModel = ._home
    @EnvironmentObject var dougaData: MovieModel
    
    @State private var isOpen : Bool = false
    
    
    init(selectedTab: NavigationModel) {
        self.selectedTab = ._home
    }
    
    var body: some View {
        ZStack {
            Color(red: 0, green: 0.4, blue: 0.8)
                .ignoresSafeArea()
            
                SideBarView()
                    .opacity(isOpen ? 1:0)
                    .offset(x: isOpen ? 0: -300)
                    .rotation3DEffect(.degrees(isOpen ? 0:30), axis: (x: 0, y: 1, z: 0))
                    
                    Group {
                        switch selectedTab {
                        case ._home:
                            SubjectListView(dougaData: dougaData)
                        case ._favorite:
                            //FavoriteView()
                            Text("お気に入りView")
                        case ._history:
                            //HistoryView()
                            Text("履歴View")
                        case ._setting:
                            //SettingView()
                            Text("設定View")
                        case ._help:
                            //HelpView()
                            Text("ヘルプView")
                        case ._login:
                            //LogInView()
                            Text("ログインView")
                        case ._signup:
                            //SignUpView()
                            Text("サインアップView")
                        }
                    }.mask(RoundedRectangle(cornerRadius: isOpen ? 30: 0, style: .continuous))
                    .rotation3DEffect(.degrees(isOpen ? 50 : 0), axis: (x: 0, y: -1, z: 0))
                    .offset(x: isOpen ? 220: 0)
                    .scaleEffect(isOpen ? 0.9: 1)
                    .ignoresSafeArea()
                    
                    Text(isOpen ? "メニューを閉じる" : "サイドメニュー")
                        .frame(width: 300, height: 60)//ここの幅設定怪しい
                        .background(Color(red: 0, green: 0.4, blue: 0.8))
                        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                        .foregroundColor(.white)
                        .shadow(color:.black, radius: 5, x: 0, y: 5)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                        .padding()
                        .onTapGesture {
                            withAnimation (.spring(response: 0.5, dampingFraction: 0.7)) {
                                isOpen.toggle()
                            }
                        }
                    
                }
        }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(selectedTab: ._home)
            .environmentObject(MovieModel())
    }
}
