//
//  ColorView.swift
//  FinancialApp
//
//  Created by Craig Clayton on 1/4/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct ColorView: View {
    let color: Color
    let segmentIndex: Int
    let selectedSegmentIndex: Int

    var body: some View {
        ZStack {
            ZStack {
                 Circle()
                     .fill(color)
                     .frame(width: 24, height: 24)

                 Circle()
                     .stroke(lineWidth: 1)
                     .frame(width: 30, height: 30)
             }
             Image("checkmark-selector")
                 .resizable()
                 .renderingMode(.template)
                 .opacity(segmentIndex == self.selectedSegmentIndex ? 1 : 0)
                 .frame(width: 12, height: 10)
                 .foregroundColor(.white)

        }
    }
}

//struct ColorView_Previews: PreviewProvider {
//    static var previews: some View {
//        ColorView(color: .black, )
//    }
//}
