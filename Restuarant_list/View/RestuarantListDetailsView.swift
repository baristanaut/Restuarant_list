//
//  RestuarantListDetailsView.swift
//  Restuarant_list
//
//  Created by Sarkhan on 24.05.26.
//

import SwiftUI

struct RestuarantListDetailsView: View {
    
    var restuarant: Restuarant
    
    var body: some View {
        ZStack(alignment: .top){
            Image(restuarant.image)
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0,maxWidth: .infinity)
                .ignoresSafeArea()
            
            Color.black
                .frame(height: 100)
                .cornerRadius(20)
                .opacity(0.8)
                .padding()
            
                .overlay(
                    VStack(spacing: 4){
                        Text(restuarant.title)
                        Text(restuarant.location)
                        Text(restuarant.type.rawValue)
                        HStack(spacing: 2) {
                            ForEach(1...5, id: \.self) { star in
                                Image(systemName: star <= restuarant.rating ? "star.fill" : "star")
                                    .foregroundStyle(star <= restuarant.rating ? .yellow : .gray)
                                    .font(.system(size: 14))
                            }
                        }
                    }
                        .font(.system(.headline,design: .rounded))
                        .foregroundStyle(.white)
                )
        }
    }
}

struct RestuarantListDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        RestuarantListDetailsView(
            restuarant: Restuarant(
                title: "test",
                type: OrderType(rawValue: "testType") ?? .tea,
                location: "Baki",
                image: "shopp",
                isFavorite: false
            )
        )
    }
}
