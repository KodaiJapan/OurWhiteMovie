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
        Text(dougaData.dougas.subjects.math[0].category)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(MovieModel())
    }
}
