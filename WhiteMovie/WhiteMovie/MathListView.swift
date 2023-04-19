//
//  MathListView.swift
//  WhiteMovie
//
//  Created by 吉田晃大 on 2023/04/10.
//

import SwiftUI

struct MathListView: View {
    //EnvironmentObjectのデータをdougaDataで受け取っている
    //ObservedObjectにしてdoguaDataを子Viewで観察可能にしている
    @ObservedObject var dougaData: MovieModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(dougaData.dougas.subjects.math, id: \.self) { douga in
                    NavigationLink(destination: DougaView( dougaData: dougaData, dougaUrl:douga.url,
                                                          dougaTitle: douga.title,
                                                           dougaDetail:douga.detail, dougaPdf: douga.pdf)) {
                        ListCellView(title:douga.title)
                    }.navigationTitle("数学")
                    .navigationBarTitleDisplayMode(.inline)
                }
            }
        }
    }
}

struct MathListView_Previews: PreviewProvider {
    static var previews: some View {
        MathListView(dougaData: MovieModel())
    }
}
