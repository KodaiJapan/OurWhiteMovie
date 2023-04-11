//
//  ParentView.swift
//  WhiteMovie
//
//  Created by 吉田晃大 on 2023/04/10.
//

import SwiftUI

struct ParentView: View {
    @EnvironmentObject var dougaData: MovieModel
    var body: some View {
        TabView {
            MathListView().tabItem {
                Image(systemName: "1.circle.fill")
            }
            EngListView().tabItem {
                Image(systemName: "2.circle.fill")
            }
        }
    }
}

struct ParentView_Previews: PreviewProvider {
    static var previews: some View {
        ParentView().environmentObject(MovieModel())
    
    }
}
