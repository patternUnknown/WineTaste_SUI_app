//
//  Library.swift
//  WineTaste_SUI_app
//
//  Created by DDDD on 18/11/2020.
//

import class UIKit.UIImage

import Foundation

struct Library {
    var sortedWines: [WineBotttle] { itemsCashe}
    
    private var itemsCashe: [WineBotttle] = [
    
        .init(title: "Cabernet", brand: "Purcari"),
        .init(title: "Cahor", brand: "Bostavan"),
        .init(title: "Shiraz", brand: "Vartely"),
        .init(title: "Shiraz", brand: "Vartely2"),
        .init(title: "Shiraz", brand: "Vartely3"),
        .init(title: "Shiraz", brand: "Vartely4"),
        .init(title: "Shiraz", brand: "Vartely5"),
        .init(title: "Shiraz", brand: "Vartely6"),
        .init(title: "Shiraz", brand: "Vartely7")
    ]
    
    var uiImages: [WineBotttle: UIImage] = [:]
    
}