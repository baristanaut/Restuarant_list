//
//  OrderType.swift
//  Restuarant_list
//
//  Created by Sarkhan on 24.05.26.
//


enum OrderType: String{
    case breakfast
    case coffeeshop
    case tea
    case wafflehouse
    case pizzahouse
    
    var description: String{
        switch self{
        case .breakfast: return "Breakfast"
        case .coffeeshop: return "Coffee SHop"
        case .tea: return "Tea"
        case .wafflehouse: return "Waffle House"
        case .pizzahouse: return "Pizza house"
        }
    }
}
