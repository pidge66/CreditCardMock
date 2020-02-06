//
//  CreateAccountView.swift
//  FinancialApp
//
//  Created by Craig Clayton on 12/28/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct CreateAccountView: View {

    @State private var selectedColor = Color.black
    @State private var selectedSegment = 0
    @State private var selectedCardType = "mc-logo-selector"

    private let ccolors = [
        Color.black,
        Color.baseRedLight,
        Color.baseDustyGray,
        Color.basePrussianBlue,
        Color.purple,
        Color.baseGreen
    ]
    
    var body: some View {
        VStack {
            // exercising @Binding
            CreditCardTypeMenuView(selectedCardType: self.$selectedCardType)
            
            // experiment - removing @Binding
            CardView(color: self.selectedColor, logo: self.selectedCardType)
            
            // attempting ForEach
            HStack {
                ForEach (0..<self.ccolors.count) { i in
                    Button(action: {
                        self.selectedSegment = i
                        self.selectedColor = self.ccolors[i]
                    }) {
                        ColorView(color: self.ccolors[i], segmentIndex: i, selectedSegmentIndex: self.selectedSegment)
                    }.buttonStyle(PlainButtonStyle())
                }
            }
        }
    }
}

//struct CreateAccountView_Previews: PreviewProvider {
//    static var previews: some View {
//        CreateAccountView().previewLayout(.fixed(width: 414, height: 450))
//    }
//}
