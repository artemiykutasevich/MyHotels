//
//  HotelService.swift
//  MyHotels
//
//  Created by Artem Kutasevich on 11.05.22.
//

import Foundation

class HotelService {
    static let hotelService = HotelService()
    private init() { /* Singleton */ }
    
    func getHotel() -> Hotel {
        // add logic
        return Hotel()
    }
}
