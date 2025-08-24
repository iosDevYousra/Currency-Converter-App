//
//  ExchangeInfo.swift
//  LOTRConverter
//
//  Created by M-Store on 8/24/25.
//

import SwiftUI

struct ExchangeInfo: View {
    var body: some View {
        ZStack{
            //background purchment image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack{
                //tittle text
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(3)
                    .padding()
                
                //Description text
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title3)
                    .padding()
                //exchange rates
                ExchangeRate(leftImage: .goldpiece, text: "1 Gold Piece = 4 Gold Pennies", rightImage: .goldpenny) //instance of exchange rate view
                ExchangeRate(leftImage: .goldpenny, text: "1 Gold Penny = 4 Silver Pieces", rightImage: .silverpiece)
                ExchangeRate(leftImage: .silverpiece, text: "1 Silver Piece = 4 Silver Pennies", rightImage: .silverpenny)
                ExchangeRate(leftImage: .silverpenny, text: "1 Silver Penny = 100 Coper Pennies", rightImage: .copperpenny)
                //Done button
                Button("Done"){
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .foregroundColor(.white)
            }
            
            .foregroundColor(.black)
        }
    }
}


#Preview {
    ExchangeInfo()
    
}
