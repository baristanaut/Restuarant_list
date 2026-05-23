//
//  ContentView.swift
//  Restuarant_list
//
//  Created by Sarkhan on 23.05.26.
//

import SwiftUI

struct ContentView: View {

    static let restuarant1 = Restuarant(
        title: "United Coffee",
        type: .pizzahouse,
        location: "Hong Kong",
        image: "business"
    )
    static let restuarant2 = Restuarant(
        title: "Coffee Lea",
        type: .coffeeshop,
        location: "London",
        image: "caffee"
    )
    static let restuarant3 = Restuarant(
        title: "Coffee Lea",
        type: .tea,
        location: "London",
        image: "caffee"
    )
    static let restuarant4 = Restuarant(
        title: "Coffee Lea",
        type: .breakfast,
        location: "London",
        image: "caffee"
    )

    var restuarantList = [restuarant1, restuarant2,restuarant3,restuarant4]

    var body: some View {
        List{
            ForEach(restuarantList.indices, id: \.self) { index in
                RestuarantListView(
                    title: restuarantList[index].title,
                    type: restuarantList[index].type.rawValue,
                    location: restuarantList[index].location,
                    image: restuarantList[index].image
                )
            }
            .listRowSeparator(.hidden)
        }
        .listStyle(.plain)

    }
}


#Preview {
    ContentView()
}
