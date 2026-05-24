//
//  ContentView.swift
//  Restuarant_list
//
//  Created by Sarkhan on 23.05.26.
//

import SwiftUI

struct ContentView: View {
   // var restuarant: Restuarant
    @State var restuarantList = [
        Restuarant(
            title: "United Coffee",
            type: .pizzahouse,
            location: "Baku",
            image: "business",
            isFavorite: false
        ),
        Restuarant(
            title: "Coffee Lea",
            type: .coffeeshop,
            location: "London",
            image: "people",
            isFavorite: false
        ),
        Restuarant(
            title: "Coffee Moffie",
            type: .tea,
            location: "United State",
            image: "coffee-shop-view",
            isFavorite: false
        ),
        Restuarant(
            title: "Barcode Coffeshop",
            type: .breakfast,
            location: "England",
            image: "enjoying",
            isFavorite: false
        )
        
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach($restuarantList.indices, id: \.self) { index in
                    NavigationLink(destination: RestuarantListDetailsView(restuarant: restuarantList[index])) {
                        RestuarantListView(restuarant: $restuarantList[index])
                    }
                    .listRowSeparator(.hidden)
                }
                .onDelete { indexSet in
                    restuarantList.remove(atOffsets: indexSet)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Restuarant List")
        }
    }
}

#Preview {
    ContentView()
}
