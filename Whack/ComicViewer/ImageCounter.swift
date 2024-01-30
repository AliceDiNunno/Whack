//
//  ImageCounter.swift
//  Whack
//
//  Created by Alice Di Nunno on 28/09/2023.
//

import Foundation

class ImageCounter: ObservableObject{
    @Published var id: Int = 0
    init(index: Int) {
        self.id = index
    }
}
