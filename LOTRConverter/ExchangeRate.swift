//
//  ExchangeRate.swift
//  LOTRConverter
//
//  Created by M-Store on 8/24/25.
//
import SwiftUI
struct ExchangeRate: View {
    let leftImage : ImageResource
    let text: String
    let rightImage : ImageResource
   
    var body: some View {
        HStack{
            //left currency image
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            //exchange text rate
            Text(text)
            
            //right currency image
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
        }
       
    }
}
#Preview {
    ExchangeRate(leftImage: .silverpiece, text: "1 Gold Piece = 4 Gold Pennies" , rightImage: .silverpenny)
    
}
