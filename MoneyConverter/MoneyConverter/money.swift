//
//  money.swift
//  MoneyConverter
//
//  Created by 정선욱 on 2017. 3. 21..
//  Copyright © 2017년 정선욱. All rights reserved.
//

import Foundation

enum Currency:Int {
    case usd = 0, krw, jpy, eur
    
    var ratio:Double {
        get{
            switch self {
            case .usd:
                return 1.0
            case .krw:
                return 1178.5
            case .jpy:
                return 122.45
            case .eur:
                return 0.92
            }
        }
    }
    
    var symbol:String{
        get{
            switch self {
            case .usd:
                return "달러"
            case .krw:
                return "원"
            case .jpy:
                return "엔"
            case .eur:
                return "유로"
            }
        }

    }
}

struct Money {
    
    var usdollar = 0.0
    
    init(_ _usdallor:Double){
        usdollar = _usdallor
    }
    
    init(_ _amount:Double, currency:Currency){
        usdollar = _amount / currency.ratio
    }
    
    func valueincurrency(currency:Currency) -> String {
        return "\(currency.symbol)" + "\(usdollar * currency.ratio)"
    }

}

let mymoney = Money(120)
let incomeinkrw = Money(350_000, currency: .krw)


