//
//  DougaView.swift
//  WhiteMovie
//
//  Created by 吉田晃大 on 2023/04/10.
//

import SwiftUI
import AVKit


struct DougaView: View {
//dougaurlはObservedObjectの方がいいのか？
    @State var dougaurl: String
    @State var player = AVPlayer()
    var dougaTitle: String
    var dougaDetail: String
    
    var body: some View {
        ScrollView{
            VStack{
                VideoPlayer(player: player)
            .aspectRatio(16/9, contentMode: .fit)
            .onAppear() {
                self.player = AVPlayer(url:Bundle.main.url(forResource:dougaurl, withExtension:"mp4")!)
            }
                VStack{
                    Text(dougaTitle)
                    Text(dougaDetail)
                }
                
                        HStack{
                            Button("再生"){
                                player.play()
                            }
                            Button("ストップ"){
                                player.pause()
                            }
                        }
                    }
            }
        }
    }



struct DougaView_Previews: PreviewProvider {
    static var previews: some View {
        DougaView(dougaurl: "sampleDouga", player: AVPlayer(),dougaTitle: "sampleTitle",dougaDetail: "SampleDetailSampleDetailSampleDetailSampleDetailSampleDetailSampleDetailSampleDetailSampleDetailSampleDetailSampleDetail")
    }
}
