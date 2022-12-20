//
//  AddressView.swift
//  Project10_part2
//
//  Created by K.Takahama on R 4/12/18.
//

import SwiftUI

struct AddressView: View {
    
    @ObservedObject var order: Order
    
    var body: some View {
        //AddressViewを作っていきます  ContentViewから入力してみます。
        Form {
            Section {
                TextField("Name", text: $order.name)
                TextField("Street Address", text: $order.streetAddress)
                TextField("City" ,text: $order.city)
                TextField("Zip" , text: $order.zip)
            }
            Section {
                NavigationLink {
                    CheckView(order: order)
                } label: {
                    Text("Check out")
                }
            }
            .disabled(order.hasValidAddress == false)
        }
        .navigationTitle("Delivery details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AddressView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddressView(order: Order())
        }
    }
}
