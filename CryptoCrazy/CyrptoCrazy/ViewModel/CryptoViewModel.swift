//
//  CryptoViewModel.swift
//  CyrptoCrazy
//
//  Created by Berkay Kuzu on 19.09.2022.
//

import Foundation

struct  CryptoListViewModel {
    let cryptoCurrencyList: [CryptoCurrency]
}

extension CryptoListViewModel {
    func numberOfRowsInSection() -> Int {
        return self.cryptoCurrencyList.count
    }
    
    func cryptoAtIndex(_ index: Int) -> CryptoViewModel {
        let crypto = self.cryptoCurrencyList[index]
        return CryptoViewModel(cryptoCurrency: crypto)
    }
}

struct CryptoViewModel {
    let cryptoCurrency: CryptoCurrency
}

extension CryptoViewModel {
    var name: String {
        return self.cryptoCurrency.currency
    }
    
    var price: String {
        return self.cryptoCurrency.price
    }
}
