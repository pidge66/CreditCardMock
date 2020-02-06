//
//  CardView.swift
//  FinancialApp
//
//  Created by Craig Clayton on 1/1/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct CardView: View {
    //@Binding var color: Color
    let color: Color
    let logo: String

    var body: some View {
        ZStack {
            HStack(spacing: -116) {
                Image("left-card")
                    .renderingMode(.template)

                Image("right-card")
                    .renderingMode(.template)
                    .opacity(0.90)
            }
            .foregroundColor(color)

            VStack {
                HStack {
                    Image("checkmark")
                    VStack(alignment: .leading, spacing: -6) {
                        Text("$99,999")
                            .customFont(.custom(.bold, 20))
                        Text("Available Balance")
                            .customFont(.custom(.regular, 10))
                    }
                    Spacer()
                    Image(logo)
                }

                HStack {
                    HStack {
                        Text("****")
                        Text("****")
                        Text("****")
                        Text("9999")
                            .customFont(.custom(.black, 20))
                    }.customFont(.custom(.black, 17))

                    Spacer()
                }.padding(.top, 15)

                Spacer()

                HStack {
                    VStack(alignment: .leading) {
                        Text("CARD HOLDER")
                            .customFont(.custom(.bold, 11))
                            .foregroundColor(.baseRockBlue)

                        Text("Yo Momma")
                            .customFont(.custom(.black, 16))
                    }
                    Spacer()
                    VStack(alignment: .leading) {
                        Text("EXPIRES")
                            .customFont(.custom(.bold, 11))
                            .foregroundColor(.baseRockBlue)

                        Text("08/99")
                            .customFont(.custom(.black, 16))
                    }

                    VStack(alignment: .leading) {
                        Text("CVV")
                            .customFont(.custom(.bold, 11))
                            .foregroundColor(.baseRockBlue)

                        Text("999")
                            .customFont(.custom(.black, 16))
                    }
                }
            }
            .frame(width: 280, height: 160)
            .padding()
            .foregroundColor(.baseWhite)
        }
    }
}

//struct CardView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardView(color: .constant(.black))
//            .previewLayout(.fixed(width: 300, height: 180))
//    }
//}
