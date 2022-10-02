//
//  Webservice.swift
//  CyrptoCrazy
//
//  Created by Berkay Kuzu on 17.09.2022.
//

import Foundation

class Webservice {
    
    func dowloadCurrencies(url: URL, completion: @escaping ([CryptoCurrency]?) -> ()) { // Veri geldiğinde veri ile bu fonksiyonu döndürmeye çalışacağız.
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                 let cryptoList = try? JSONDecoder().decode([CryptoCurrency].self, from: data) // datayı alıp işleme işlemini bir satırda yapacak!
              
                print(cryptoList)
                
                if let cryptoList = cryptoList {
                    completion(cryptoList)
                }
                
            }
        }.resume()
    }
    
    
}
