//
//  RestuarantListView.swift
//  Restuarant_list
//
//  Created by Sarkhan on 23.05.26.
//

import SwiftUI

struct RestuarantListView: View {
    var title: String
    var type: String
    var location: String
    var image: String
    
   @State var showOptions = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(self.image)
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .cornerRadius(20)

            VStack(alignment: .leading, spacing: 5) {
                Text(self.title)
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                Text(self.type)
                    .font(.system(size: 20))
                    .fontWeight(.medium)
                Text(self.location)
                    .opacity(0.5)

            }
            .padding(.horizontal)
            .padding(.bottom)

        }
        .onTapGesture {
            showOptions.toggle()
        }
        .confirmationDialog(
            "What do you want to do?",
            isPresented: $showOptions,
            titleVisibility: .visible
        ) {
            Button("Mark as favorite"){
                print("done")
            }
        }
        
    }
}
#Preview {
    RestuarantListView(
        title: "fgfgf",
        type: "fgfg",
        location: "klkl",
        image: "caffee"
    )
}
