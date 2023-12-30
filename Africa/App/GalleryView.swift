//
//  GalleryView.swift
//  Africa
//
//  Created by naswakhansa on 28/11/23.
//

import SwiftUI

struct GalleryView: View {
    //Properties
    @State private var SelectedAnimal : String = "lion"
    let animals : [Animal] = Bundle.main.decode("animals.json")
    let heptics = UIImpactFeedbackGenerator(style: .medium)
    //Main
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment : .center, spacing: 30){
                Image(SelectedAnimal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 8))
            }
        }
    }
}

#Preview {
    GalleryView()
}
