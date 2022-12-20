//
//  CheckView.swift
//  Project10_part2
//
//  Created by K.Takahama on R 4/12/20.
//

import SwiftUI

struct CheckView: View {
    @ObservedObject var order: Order
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CheckView_Previews: PreviewProvider {
    static var previews: some View {
        CheckView(order: Order())
    }
}
