//
//  CyrptoCurrency.swift
//  CyrptoCrazy
//
//  Created by Berkay Kuzu on 17.09.2022.
//

import Foundation

struct CryptoCurrency : Decodable {
    let currency : String
    let price : String
}


// Decodable: internetten veri çekerken, get data.
// Encodable: data yollarken, post data.
// Decodable & Encodable: Codable
