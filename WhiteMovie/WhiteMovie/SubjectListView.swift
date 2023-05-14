//
//  MathListView.swift
//  WhiteMovie
//
//  Created by 吉田晃大 on 2023/04/10.
//

import SwiftUI

struct SubjectListView: View {
    //EnvironmentObjectのデータをdougaDataで受け取っている
    //ObservedObjectにしてdoguaDataを子Viewで観察可能にしている
    @ObservedObject var dougaData: MovieModel
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Color(red: 0, green: 0.5, blue: 1).ignoresSafeArea()
                ScrollView{
                    ZStack {
                        Color(red: 0, green: 0.5, blue: 1).ignoresSafeArea()
                        VStack {
                                Text("数学")
                                ForEach(dougaData.dougas.subjects.math, id: \.self) { douga in
                                    NavigationLink(destination: DougaView( dougaData: dougaData, dougaUrl:douga.url,
                                                                           dougaTitle: douga.title,
                                                                           dougaDetail:douga.detail, dougaPdf: douga.pdf)) {
                                        ListCellView(title:douga.title)
                                    }.navigationTitle("動画を選ぶ")
                                        .navigationBarTitleDisplayMode(.inline)
                                }
                                Text ("英語")
                                    ForEach(dougaData.dougas.subjects.english, id: \.self) { douga in
                                        NavigationLink(destination: DougaView(dougaData: dougaData, dougaUrl: douga.url,
                                                                              dougaTitle: douga.title,
                                                                              dougaDetail:douga.detail, dougaPdf: douga.pdf)) {
                                            ListCellView(title:douga.title)
                                        }
                                }
                            Text ("英語")
                                ForEach(dougaData.dougas.subjects.english, id: \.self) { douga in
                                    NavigationLink(destination: DougaView(dougaData: dougaData, dougaUrl: douga.url,
                                                                          dougaTitle: douga.title,
                                                                          dougaDetail:douga.detail, dougaPdf: douga.pdf)) {
                                        ListCellView(title:douga.title)
                                    }
                                }
                        }
                    }
                }
            }
        }
        
    }
}

struct SubjectListView_Previews: PreviewProvider {
    static var previews: some View {
        SubjectListView(dougaData: MovieModel())
    }
}
