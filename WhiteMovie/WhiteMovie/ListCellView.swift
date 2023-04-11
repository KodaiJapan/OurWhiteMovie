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
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 1)
                .fill(Color.red)
                .overlay {
                    HStack{
                        Image("sample1")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                            .padding()
                        Text(title)
                        Spacer()
                    }
                }.frame(width:.infinity, height: 70)
        }
    }
}

struct CustomListCellView_Previews: PreviewProvider {
    static var previews: some View {
        ListCellView(title: "Hello")
    }
}
