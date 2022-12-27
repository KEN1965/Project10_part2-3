//
//  Order.swift
//  Project10_part2
//
//  Created by K.Takahama on R 4/12/18.
//

import SwiftUI

class Order: ObservableObject {
    static let types = ["Vanilla","Strawberry","Chocolate","Rainbow"]
    
    @Published var type = 0
    @Published var quantity = 3
    
    @Published var specialRequestEnabled = false {
        didSet {
            if specialRequestEnabled == false {
                extraFrosting = false
                addSprinkles = false
            }
        }
    }
    
    @Published var extraFrosting = false
    @Published var addSprinkles = false
    
    @Published var name = ""
    @Published var streetAddress = ""
    @Published var city = ""
    @Published var zip = ""
    
    //４つの入力画から出ないことを確認
    var hasValidAddress: Bool {
        if name.isEmpty || streetAddress.isEmpty || city.isEmpty || zip.isEmpty {
            return false
        }
        return true
    }
    
    var cost: Double {
        //1 ケーキあたり 2 ドル
        var cost = Double(quantity) * 2
        
        //複雑なケーキはより高価です
        cost += (Double(type) / 2)
        
        //追加のフロスティングは $1/ケーキ
        if extraFrosting {
            cost += Double(quantity)
        }
        
        //スプリンクルの $0.5/ケーキ
        if addSprinkles {
            cost += Double(quantity) / 2
        }
        
        return cost
    }
}
