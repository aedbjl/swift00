//
//  File.swift
//  20170607
//
//  Created by iii-user on 2017/6/7.
//  Copyright © 2017年 iii-user. All rights reserved.
//

import Foundation

func test1(){
    var (x,y,z)=(1,2,3)
    var a = (x,y,z)
    print(type(of:a))
    print(x)
    print(a.0)
    print(a.1)
    print(a.2) //數組非陣列
}

func test2(){
    var a: Int? = 4 // ?代表可無意義或有數值
    a = 5
    a = nil
    print(a)
    print(type(of:a))
    print(a as Any)
    
}

func test3(){
    var a = 3
    a += 1
    print(a)
}

func test4(){
    var score : UInt = 79
    if(score >= 60){
        print("Pass")
    }else {
        print("False")
    }
}

func test5(){
    let rand = arc4random() //範圍0~(2^32-1)
    let score = rand % 101
    
    let rand2 = arc4random_uniform(10)
    if(score >= 60){
        print("Pass")
    }else {
        print("False")
    }
    print(score)
    print(rand2)
}
func test6(){
    var a = "Brad"
    var b : String? = "brad"
    b = nil
    print(b ?? 0) // ?? = defalut value
    //var c = a + b
    //print(c)
    var c = "BRAD"
    var d : Int? = Int(c)
    //var d = Int(c)! + 45
    print(d ?? -1)
}

func test7(){
    print("Input a score =", terminator:"")
    let input : String? = readLine() // String?
    var score : UInt32 = UInt32(input ?? "0") ?? 0
        //print(type(of:input))
    if score % 400 == 0  {
        print("A")
    }else if score % 100 == 0 {
        print ("B")
    }else if score % 4 == 0{
        print("A")
    }else {
        print("B")
    }
}

func test8(){
    print("Input a Year = ",terminator: "")
    let input:String? = readLine()
    let year: UInt16 = UInt16(input ?? "0") ?? 0
    var isLeap: Bool
    if year % 4 == 0{
        if year % 100 == 0 {
            if year % 400 == 0{
                isLeap = true
            }else {
                isLeap = false
            }
        }else {
            isLeap = true
        }
    }else {
        isLeap = false
    }
    
    print("Year: \(year) is " + (isLeap ? "YES":"NO"))
}

func test9(){
    var a = "Hello, World!"
    var b = String()
    
    if b.isEmpty {
        print("b is empty")
    }
    
    for c in a.characters{
        print(c)
    }
    var c = a
    a = "Hello"
    print(a)
    print(c)
    print(a.characters.count)
    
    for i in 1...a.characters.count{
        var start = a.index(a.startIndex
            , offsetBy:i-1) //算出起始位置
        var end = a.index(a.startIndex, offsetBy: i) //結尾
        var range = start..<end
        print(a[range])
        
    }
    a.insert("e", at: a.endIndex)
    a.insert("X", at: a.index(a.startIndex, offsetBy:3))
    
        print(a)
}

func test10(){
    var i:Int = 100
    
    for _ in 1...10{
        i += 1 
        
        print(i)
    }
    print(i)
}

func test11(){
    for k in 0..<2{
        for j in 1...9{
            for i in 2...5{
                let newi = i + k * 4
                print("\(newi)x\(j)=\(newi*j)", terminator: "\t")
            }
            print()
        }
        print("------")
    }
    
    
}

func test12(){
    var j = 0
    var i = 1
//    while i <= 100 {
//        j += i
//        i += 1
//    }
   
    repeat{
        j += i
        i += 1
    }while i <= 100
     print(j)
    
}

func test13(){
//    var k = 0
//    var a = 0
//    for _ in 1...10{
//     for _ in 1...10{
//        a += 1
//        print("\(a)", terminator:"\t")
//     }
//        
//    print()
//    }
    for j in 0...9{
        var i = 1
        while i <= 10 {
            var num = j * 10 + i
            print(num, terminator : " ")
            i += 1
            
        }
        print()
    }
}


