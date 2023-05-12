//
//  ListCellView.swift
//  WhiteMovie
//
//  Created by 吉田晃大 on 2023/04/10.
//

import SwiftUI
//動画リスト用ViewCell
struct ListCellView: View {
    var title: String
    
    var body: some View {
        VStack {
                    HStack{
                        Image("sample1")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                            .padding()
                        Text(title)
                        Spacer()
                    }
        }.frame(maxWidth:.infinity,maxHeight: 70)
            .foregroundColor(.white)
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 10))
            .overlay(.white.opacity(0.5), in: RoundedRectangle(cornerRadius: 10).stroke(style: .init()))
            .padding(4)
        }
    }

struct CustomListCellView_Previews: PreviewProvider {
    static var previews: some View {
        ListCellView(title: "Hello")
    }
}
