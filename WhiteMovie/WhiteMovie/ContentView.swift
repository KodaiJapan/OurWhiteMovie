//
//  ContentView.swift
//  WhiteMovie
//
//  Created by 吉田晃大 on 2023/04/10.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var dougaData: MovieModel
    var body: some View {
            SubjectListView(dougaData: dougaData)
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(MovieModel())
    }
}
