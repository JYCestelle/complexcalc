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
    
    
    //substract
    //multiply
    //divide
    //mapOp
    //count
    //avg
    
    
    

}
