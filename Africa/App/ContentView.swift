//
//  ContentView.swift
//  Africa
//
//  Created by naswakhansa on 27/11/23.
//

import SwiftUI

struct ContentView: View {
    let animals:[Animal] = Bundle.main.decode("animals.json")
    var body: some View {
        NavigationView{
            List{
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                ForEach(animals){item in
                    NavigationLink(destination : AnimalDetailView(animal: item)){
                        AnimalListItemView(animal: item)
                    }

                    
                }
            }
            .navigationBarTitle("Africa", displayMode: .inline)
        }
    }
}

#Preview {
    ContentView()
}
