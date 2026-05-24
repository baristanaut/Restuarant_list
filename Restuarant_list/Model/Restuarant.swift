//
//  CollectionProperty.swift
//  Restuarant_list
//
//  Created by Sarkhan on 23.05.26.
//

struct Restuarant{
    var title: String
    var type: OrderType
    var location: String
    var image: String
    var isFavorite: Bool
    var rating: Int

    init(title: String, type: OrderType, location: String, image: String, isFavorite: Bool = false, rating: Int = 0) {
        self.title = title
        self.type = type
        self.location = location
        self.image = image
        self.isFavorite = isFavorite
        self.rating = rating
    }
}
