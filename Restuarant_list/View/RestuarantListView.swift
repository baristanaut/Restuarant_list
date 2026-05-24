//
//  RestuarantListView.swift
//  Restuarant_list
//
//  Created by Sarkhan on 23.05.26.
//

import SwiftUI

struct RestuarantListView: View {
    
   @Binding var restuarant: Restuarant
   @State var showOptions = false
   @State var showError = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(self.restuarant.image)
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .cornerRadius(20)

            HStack(alignment: .firstTextBaseline){
                VStack(alignment: .leading, spacing: 5) {
                    Text(self.restuarant.title)
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                    Text(self.restuarant.type.rawValue)
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                    Text(self.restuarant.location)
                        .opacity(0.5)

                    HStack(spacing: 2) {
                        ForEach(1...5, id: \.self) { star in
                            Image(systemName: star <= restuarant.rating ? "star.fill" : "star")
                                .foregroundStyle(star <= restuarant.rating ? .yellow : .gray)
                                .font(.system(size: 16))
                                .onTapGesture {
                                    restuarant.rating = star
                                }
                        }
                    }
                    .padding(.top, 2)
                }
                Spacer()
                if restuarant.isFavorite {
                    Image(systemName: "heart.fill")
                        .foregroundStyle(.red)
                }else{
                    Image(systemName: "heart")
                }
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
            Button(restuarant.isFavorite ? "Remove from favorites" : "Mark as favorite"){
                print("done")
                self.restuarant.isFavorite.toggle()
            }
            Button("Show directions"){
                self.showError.toggle()
            }
        }
        .alert("Not working", isPresented: $showError) {
            Button("OK"){
                //
            }
        }message: {
            Text("Sorry,This feature is not available")
        }
        
    }
}
#Preview {
    @Previewable @State var restuarant = Restuarant(
        title: "United Coffee",
        type: .coffeeshop,
        location: "Baku",
        image: "business",
        isFavorite: true,
        rating: 3
    )
    RestuarantListView(restuarant: $restuarant)
}

