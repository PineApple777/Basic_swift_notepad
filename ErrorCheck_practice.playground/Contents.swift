//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// file read and write
// sandbox structure
let filepath = "/"
try? str.write(toFile: filepath, atomically: true, encoding: String.Encoding.utf8)
if let newStr = try String(contentsOfFile: filepath) {
    
}
print("end")


// Error protocol
// NSError class

enum CustomError : Error {
    case Myfault
    case YourFault
}

do {
    throw CustomError.Myfault
} catch {
    print("Error!!")
}

func dolt() throws {
    throw CustomError.YourFault
}
do {
    try dolt()
}
    
catch let error {
    print("Error : \(error)")
}

func justDolt(){
    do {
        try dolt()
    }
    catch {
        print("Error!!")
    }
}


try? dolt() // 에러가 나면 미리 받음.



struct CustomErrorStruct : Error {
    var msg : String
}

let structerror = CustomErrorStruct(msg: "에러낫음!!")

catch let error where error is CustomErrorStruct  {
    print("에러가 발생함!!")
}

// Error API

do {
    try
} catch {
    
}

// if try? -> return nil
// if try! -> return crash


func delt(_ arg: () throw -> ()){
    return dangrousFunction
}


// error propagation
func delt3(_ arg: () throws -> () ) rethrows {
    try arg()
}

do {
    try delt3{
        throw CustomError.Myfault
    }
}

// clean up 
// using defer when error occur -> 가장 나중에 동작
defer {
    print("동작 마무리")
}






















