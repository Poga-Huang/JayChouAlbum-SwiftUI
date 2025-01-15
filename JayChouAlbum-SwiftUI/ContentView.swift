//
//  ContentView.swift
//  JayChouAlbum-SwiftUI
//
//  Created by 黃柏嘉 on 2025/01/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            
            AlbumsView()
        
            Spacer()
        }
        .background(.white)
        .foregroundStyle(.black)
    }
}

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("周杰倫 Jay Chou")
                    .font(.title3)
                
                Text("歷年專輯列表 ")
                    .font(.system(.title,
                                  design: .rounded,
                                  weight: .black))
            }
            
            Spacer()
        }
        .padding()
    }
}

struct AlbumsView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(AlbumInfo.infos, id: \.title) { info in
                    AlbumView(info: info)
                }
            }
        }

    }
}

struct AlbumView: View {
    
    var info: AlbumInfo
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomLeading){
                Image(info.title, bundle: nil)
                    .resizable()
                    .frame(maxWidth: 200, maxHeight: 200)
                    .aspectRatio(contentMode: .fill)
                
                Text(info.index)
                    .frame(width: 30, height: 30)
                    .background(.black)
                    .foregroundStyle(.white)
                    .font(.system(size: 20,
                                  weight: .bold,
                                  design: .rounded))
            }
                
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text(info.title)
                        .font(.system(.title2,
                                      design: .rounded,
                                      weight: .bold))
                    
                    Text("發行日期: \(info.releaseDate)")
                        .font(.subheadline)
                    
                    Text("歌曲總數: \(info.count)首")
                        .font(.footnote)
                }.padding()
                
                Spacer()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 300)
        .clipShape(.rect(cornerRadius: 10))
        .overlay(content: {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(white: 0.1, opacity: 0.1), lineWidth: 1)
                .shadow(color: .black, radius: 2,x: 1, y: 1)
        })
        .rotation3DEffect(
            .degrees(20),
            axis: (x: 0.0, y: 1.0, z: 0.0)
        )
        .padding(20)
    }
}

#Preview {
    ContentView()
}
