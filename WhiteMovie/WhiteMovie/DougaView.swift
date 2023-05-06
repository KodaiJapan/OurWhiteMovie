//
//  DougaView.swift
//  WhiteMovie
//
//  Created by 吉田晃大 on 2023/04/10.
//

import SwiftUI
import AVKit


struct DougaView: View {
    
    @State private var isShowingPdf = false
    //ListView上のObservedObjectを観察するためのObservedObject
    @ObservedObject var dougaData: MovieModel
    //@State変数にしておくと、初期化後に.onAppearで値を変更後Viewの再描写する
    @State var player = AVPlayer()
    
    let dougaUrl: String
    let dougaTitle: String
    let dougaDetail: String
    let dougaPdf: String
    
    
    //var douga~: Stringをデータに対応する分付け加えてDougaView内のデータとする
    
    var body: some View {
        ZStack{
        ScrollView{
            VStack{
                VideoPlayer(player: player)
                    .aspectRatio(16/9, contentMode: .fit)
                    .onAppear() {
                        self.player = AVPlayer(url:Bundle.main.url(forResource:dougaUrl, withExtension:"mp4")!)
                    }
                Text(dougaTitle)
                Text(dougaDetail)
                Spacer(minLength: 80)
                if #available(iOS 15.0, *) {
                    HStack{
                        Button("再生"){
                            player.play()
                        }.modifier(FlatGlassView())
                        Button("ストップ"){
                            player.pause()
                        }.modifier(FlatGlassView())
                        Button("PDFを表示"){
                            self.isShowingPdf.toggle()
                        }.sheet(isPresented: self.$isShowingPdf) {
                            PDFUIView(samplepdf: dougaPdf)
                        }
                    }
                }
            }
                    }
        }.background(Image("glassback4").resizable().scaledToFill())

        }
    }



struct DougaView_Previews: PreviewProvider {
    static var previews: some View {
        DougaView(dougaData: MovieModel(), player: AVPlayer(),dougaUrl: "sampleDouga",dougaTitle: "sampleTitle",dougaDetail: "SampleDetailSampleDetailSampleDetailSampleDetailSampleDetailSampleDetailSampleDetailSampleDetailSampleDetailSampleDetail", dougaPdf: "samplepdf")
    }
}
