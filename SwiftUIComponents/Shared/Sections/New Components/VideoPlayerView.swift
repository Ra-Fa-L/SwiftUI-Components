//
//  VideoPlayerView.swift
//  SwiftUIComponents (iOS)
//
//  Created by Rafal Padberg on 09/05/2021.
//

import SwiftUI
import AVKit
import AVFoundation

struct VideoPlayerView: View {
    private let firstVideo = Bundle.main.url(forResource: "testVideo", withExtension: "mp4")!
    private let secondVideo = Bundle.main.url(forResource: "testVideo2", withExtension: "mp4")!
    private let externalUrl = URL(string: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4")!
    
    @State private var activeUrl: URL = Bundle.main.url(forResource: "testVideo", withExtension: "mp4")!
    @State private var isFirstVideo = false
    
    var body: some View {
        ZStack {
            VideoPlayer(player: AVPlayer(url: activeUrl))
            
            VStack {
                Spacer()
                
                #if os(watchOS)
                Button(action: changeVideoURL) {
                    Text("Change Video")
                }
                .scaleEffect(CGSize(width: 0.5, height: 0.5))
                .font(.footnote)
                #else
                Button(action: changeVideoURL) {
                    Text("Change Video")
                }
                .padding()
                .background(Color.white)
                .cornerRadius(24)
                .padding(.vertical, 50)
                #endif
            }
        }
        .navTitle("VideoPlayer")
    }
    
    private func changeVideoURL() {
        activeUrl = isFirstVideo ? firstVideo : secondVideo
        isFirstVideo.toggle()
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView()
    }
}
