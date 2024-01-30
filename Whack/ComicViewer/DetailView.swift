//
//  DetailView.swift
//  Whack
//
//  Created by Alice Di Nunno on 28/09/2023.
//

import Foundation
import SwiftUI
import Kingfisher

struct Fullscreen<Content: View>: View {
    @Binding var isFullscreen: Bool
    
    var content: () -> Content
    
    var body: some View {
        content()
            .gesture(TapGesture() .onEnded({
                isFullscreen.toggle()
            }))
            .statusBarHidden(self.isFullscreen)
            .persistentSystemOverlays(self.isFullscreen ? .hidden : .visible)
            .toolbar(self.isFullscreen ? .hidden : .visible, for: .navigationBar)
    }
}

struct ImageList: View {
    @Binding var isUserSwiping: Bool
    @EnvironmentObject var imageData: ImageData
    @EnvironmentObject var imageCounter: ImageCounter
    
    var width: CGFloat
    
    func opacityForItem(id: Int) -> CGFloat {
        if self.imageCounter.id == id {
            if isUserSwiping {
                return 0.5
            }
            return 1
        }
        else { // isUserSwiping = true
            if self.imageCounter.id == id || self.imageCounter.id + 1 == id || self.imageCounter.id - 1 == id {
                return 1
            } else {
                return 0
            }
        }
    }
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 1) {
                ForEach(imageData.photos) {
                    photo in
                    VStack {
                        Spacer()
                        KFImage(URL(string: photo.name))
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: width)
                            .opacity(opacityForItem(id: photo.id))
                        Spacer()
                    }
                }
            }
        }
        .content
    }
}

struct DetailView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @EnvironmentObject var imageData: ImageData
    @EnvironmentObject var imageCounter: ImageCounter
    @State var isUserSwiping: Bool = false
    @State var offset: CGFloat = 0
    @State var isFullscreen: Bool = false
    
    var body: some View {
        Fullscreen(isFullscreen: $isFullscreen) {
            GeometryReader {
                geometry in
                ImageList(isUserSwiping: $isUserSwiping, width: geometry.size.width).environmentObject(imageData).environmentObject(imageCounter)
                    .offset(x: self.isUserSwiping ? self.offset : CGFloat(self.imageCounter.id) * -geometry.size.width)
                    .frame(width: geometry.size.width, alignment: .leading)
                    .animation(Animation.snappy(duration: 0.3), value: offset)
                
                    .gesture(DragGesture()
                        .onChanged({
                            value in
                            self.isUserSwiping = true
                            self.offset = value.translation.width - geometry.size.width * CGFloat(self.imageCounter.id)
                        })
                            .onEnded({
                                value in
                                withAnimation {
                                    if value.translation.width < 0 {
                                        if value.translation.width < geometry.size.width / 2, self.imageCounter.id < self.imageData.photos.count - 1 {
                                            self.imageCounter.id += 1
                                        }
                                    }
                                    else if value.translation.width > 0 {
                                        if value.translation.width > 30.0, self.imageCounter.id > 0 {
                                            self.imageCounter.id -= 1
                                        }
                                    }
                                    self.isUserSwiping = false
                                    
                                    if !self.isFullscreen {
                                        self.isFullscreen.toggle()
                                    }
                                }
                            })
                    )
            }
        }.edgesIgnoringSafeArea(horizontalSizeClass != .compact ? .all : [])
    }
}
