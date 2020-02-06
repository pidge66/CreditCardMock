//
//  CreditCardTypeMenuView.swift
//  FinancialApp
//
//  Created by Craig Clayton on 1/9/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct CreditCardTypeMenuView: View {

    @Binding var selectedCardType: String
    @State private var selectedSegment = 0

    let logos = [
        "mc-logo-selector",
        "visa-logo-selector",
        "am-logo-selector"
    ]
    
//    let cardTypeImgs = [
//    ]

    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 3) {
                Text("SELECT A CARD TYPE")
                    .customFont(.custom(.bold, 18))
                    .foregroundColor(.basePrussianBlue)
                    .padding(.leading)

                Divider()
            }.padding(.top, 15)

            VStack {
                HStack {
                    ForEach(0..<logos.count) { index in
                        Button(action:{
                            self.selectedSegment = index
                            self.selectedCardType = self.logos[index]
        
                        }) {
                            VStack {
                                Image(self.logos[index])
                                ZStack {
                                    Image("checkmark-outline-selector")
                                    Image("checkmark-selector").opacity(index == self.selectedSegment ? 1.0 : 0.0)
                                }
                            }
                        }
                        .buttonStyle(CreditCardStyle())
                    }
                }
            }
        }
    }
}

//struct CreditCardTypeMenuView_Previews: PreviewProvider {
//    static var previews: some View {
//        CreditCardTypeMenuView()
//    }
//}
