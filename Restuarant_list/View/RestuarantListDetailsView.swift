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
        ZStack(alignment: .bottom) {
            Image(restuarant.image)
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity)
                .ignoresSafeArea()

            VStack(spacing: 8) {
                Text(restuarant.title)
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)

                Text(restuarant.type.rawValue)
                    .font(.system(.subheadline, design: .rounded))
                    .padding(.horizontal, 12)
                    .padding(.vertical, 4)
                    .background(.ultraThinMaterial)
                    .cornerRadius(12)

                HStack(spacing: 4) {
                    Image(systemName: "mappin.circle.fill")
                        .font(.system(size: 14))
                    Text(restuarant.location)
                        .font(.system(.subheadline, design: .rounded))
                }
                .opacity(0.9)

                HStack(spacing: 4) {
                    ForEach(1...5, id: \.self) { star in
                        Image(systemName: star <= restuarant.rating ? "star.fill" : "star")
                            .foregroundStyle(star <= restuarant.rating ? .yellow : .white.opacity(0.5))
                            .font(.system(size: 16))
                    }
                }
            }
            .padding(.vertical, 20)
            .padding(.horizontal, 24)
            .frame(maxWidth: .infinity)
            .background(
                LinearGradient(
                    colors: [.clear, .black.opacity(0.8)],
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .foregroundStyle(.white)
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct RestuarantListDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        RestuarantListDetailsView(
            restuarant: Restuarant(
                title: "test",
                type: .tea,
                location: "Baki",
                image: "shopp",
                isFavorite: false
            )
        )
    }
}
