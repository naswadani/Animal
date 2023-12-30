//
//  VideoListItem.swift
//  Africa
//
//  Created by naswakhansa on 30/11/23.
//

import SwiftUI

struct VideoListItemView: View {
    let video : Video
    var body: some View {
        HStack(spacing:10) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                    .cornerRadius(9)
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            }//zstack
            VStack(alignment: .leading, spacing: 10){
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }
        }//hstack
    }
}
let videos : [Video] = Bundle.main.decode("videos.json")
#Preview {
    VideoListItemView(video: videos[0])
        .previewLayout(.sizeThatFits)
        .padding()
}
