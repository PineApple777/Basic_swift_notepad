//: Playground - noun: a place where people can play

import UIKit

func addVAT(source:Double) -> Double {
    return source * 1.1
}

func couponDiscount(source:Double) -> Double {
    return source * 0.9
}

var additional:(Double) -> Double

let transaction032701 = 120.7
additional = addVAT

let price032701 = additional(transaction032701)

func finalPrice(source:Double, additional:(Double) -> Double) -> Double {
    
    let price = additional(source)
    
    return price
}

let price032702 = finalPrice(350.0, additional: couponDiscount)

// Closure

let addVATClosure = { (source:Double) -> Double in
    return source * 1.1
}


let addVATClosure2 = { source in
    return source * 1.1
}

let addVATClosure3 = { source in
    source * 1.1
}

let addVATClosure4 = { $0 * 1.1 }

let coupontDiscountClosure { (source:Double) -> Double in
    return source * 0.9
}

let coupontDiscountClosure2 { $0 * 0.9 }

let price032703 = addVATClosure(157.6)
let price032704 = coupontDiscountClosure2(200.0)

// currying

func makeAdder(x:Int) -> (Int) -> Int {
    func adder(a:Int) -> Int {
        return x + a
    }
    return adder
}

func makeAdder2(x:Int) -> Int -> Int {
    return {
        return $0 + x
    }
}



let add5 = makeAdder(x:5)

let add10 = makeAdder(x:10)

print(add5(2))

print(add10(3))

// this is like Haskel Currying
print(makeAdder2(5)(2))


// map function
let transactions = [560.0, 321.5, 190.0, 672.8, 1190.0, 450.0]


func addVAT_(source:Double) -> Double {
    return source * 1.1
}

var vatPrice:[Double] = []

for transaction in transactions {
    vatPrice += [addVAT_(transaction)]
}

let vatMapPrices = transactions.map({ transactions -> Double in
    return transactions * 1.1
})

let vatMapPrices = transactions.map({ $0 * 1.1 })

// filter function

var bigTransactions:[Double] = []

// this is not filter
for price in vatPrice {
    if price >= 500 {
        bigTransactions += [price]
    }
}

// using filter

let bigFilterTransactions = vatPrice.filter { $0 >= 500 }


// sort function 

func ascendantSort (sort1:Double , sort2:Double) -> Bool{
    return sort1 > sort2
}

let sortedPrices = vatPrice.sort(ascendantSort)

let sortedPrices2 = vatPrice.sort({ sort1, sort2 in
    return sort1 > sort2
})

let sortedPrices3 = vatPrice.sort({ $0 > $1 })


// reduce function
// *** combine ***
// 일반적인 함수를 범용적화

func priceSum (Base:Double, adder:Double) -> Double {
    return Base + adder
}

var sum:Double = 0.0

for price in vatPrice {
    sum = priceSum(sum, adder:price)
}









