//
//  AnimalListItemView.swift
//  Africa
//
//  Created by naswakhansa on 29/11/23.
//

import SwiftUI

struct AnimalListItemView: View {
    let animal: Animal
    var body: some View {
        HStack(alignment: .center,spacing: 16 ){
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
            VStack(alignment:.leading, spacing: 8){
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .padding(.trailing, 8)
            }
        }
    }
}

let animals: [Animal] = Bundle.main.decode("animals.json")
#Preview {
    AnimalListItemView(animal: animals[1])
}
