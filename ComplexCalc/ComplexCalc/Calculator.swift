//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Edited by Estelle Jiang on 01/24/2018
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    
    //add
    public func add(lhs : Int, rhs : Int) -> Int {
        return lhs + rhs
    }
    
    public func add(_ input: [Int]) -> Int{
        var result = 0
        for n in input{
            result = result + n
        }
        return result
    }
    
    public func add(lhs : (Int, Int), rhs : (Int, Int)) -> (Int, Int){
        return(lhs.0 + rhs.0, lhs.1 + rhs.1)
    }
    
    public func add(lhs: [String : Int], rhs: [String : Int]) -> [String: Int]{
        var result = [String: Int]()
        result["x"] = lhs["x"]! + rhs["x"]!
        result["y"] = lhs["y"]! + rhs["y"]!
        return result
    }
    
    //subtract
    public func subtract(lhs : Int, rhs : Int) -> Int {
        return lhs - rhs
    }
    
    public func subtract(lhs : (Int, Int), rhs : (Int, Int)) -> (Int, Int){
        return(lhs.0 - rhs.0, lhs.1 - rhs.1)
    }
    
    public func subtract(lhs: [String : Int], rhs: [String : Int]) -> [String: Int]{
        var result = [String: Int]()
        result["x"] = lhs["x"]! - rhs["x"]!
        result["y"] = lhs["y"]! - rhs["y"]!
        return result
    }
    
    //multiply
    public func multiply(lhs : Int, rhs : Int) -> Int {
        return lhs * rhs
    }
    
    public func multiply(_ input: [Int]) -> Int{
        var result = 1
        for n in input{
            result = result * n
        }
        return result
    }
    
    //divide
    public func divide(lhs : Int, rhs : Int) -> Int {
        return lhs / rhs
    }
    
    //mapOp
    public func mathOp(lhs : Int, rhs : Int, op : (Int, Int) -> Int) ->Int {
        return op(lhs, rhs)
    }
    
    public func mathOp(args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int {
        var result = beg
        for num in args {
            result = op(num, result)
        }
        return result;
    }
    
    //count
    public func count(_ input: [Int]) -> Int{
        return input.count
    }
    
    //avg
    public func avg(_ input : [Int]) -> Int {
        var res = add(input)
        res = res / input.count
        return res
    }
}
