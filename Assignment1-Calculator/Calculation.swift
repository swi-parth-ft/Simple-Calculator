//
//  Calculation.swift
//  Assignment1-Calculator
//
//  Created by Parth Antala on 2022-02-08.
//

import Foundation
class calculation{
    var values = [String]()
    func push(s: String){
        values.append(s)
        print(values)
    }
        func ans() -> Int{
            let stringArray = values.joined(separator: "")
            let expression = NSExpression(format:stringArray)
            let answer = expression.expressionValue(with: nil, context: nil) as? Int
            if let final = answer{
                print(final)
            return final
            }
            else{
                return 0
            }
            
        }
    func clean() {
        
    values.removeAll()
        
    }
    func checkValues() -> Bool
    {
        var operatorIndex = 1
        var numIndex = 0
        if values[0] == "+" && values[0] == "-" && values[0] == "*" && values[0] == "/" {
            values.removeAll()
            return false
        }
        for index in 1...(values.count-1){
            if( values[index] == "+" ){
                if operatorIndex == index-1 || operatorIndex == index+1 { values.removeAll()
                    return false
                }
                else
                {
                    operatorIndex = index
                    continue
                }}
            if( values[index] == "-" ){
                if operatorIndex == index-1 || operatorIndex == index+1 { values.removeAll()
                    return false
                }
                else
                {
                    operatorIndex = index
                    continue }
            }
            if( values[index] == "*" ){
                if operatorIndex == index-1 || operatorIndex == index+1 { values.removeAll()
                    return false
                }
                else
                {
                    operatorIndex = index
                    continue }
            }
            if( values[index] == "/" ){
                if operatorIndex == index-1 || operatorIndex == index+1 { values.removeAll()
                    return false
                }

                else
                {
                    operatorIndex = index
                    continue }
            }
            if( values[index] == "=" ){
                return false
            }
            else{
                if numIndex == index-1 || numIndex == index+1{
                    values.removeAll()
                    return false
                }
                else
                {
                    numIndex = index
                    continue
                }
            }
        
        }
        return true
    }
}
