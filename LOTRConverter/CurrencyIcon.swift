//
//  CurrencyIcon.swift
//  LOTRConverter
//
//  Created by M-Store on 8/26/25.
//

import SwiftUI
struct CurrencyIcon: View {
    let currencyImage : ImageResource
    let currencyText : String
    var body: some View {
                //icon
                ZStack(alignment: .bottom){
                    //icone image
                    Image(currencyImage)
                        .resizable()
                        .scaledToFit()
                    
                    //icon text
                    Text(currencyText)
                        .font(.caption)
                        .padding(3)
                       .frame(maxWidth:.infinity)
                       .background(.brown.opacity(0.75))

         
                    
                }
                .padding(3)
                .frame(width: 100, height: 100)
                .background(.brown)
                .clipShape(.rect(cornerRadius: 25))
    
         
    }
}
#Preview {
    CurrencyIcon(currencyImage: .copperpenny, currencyText: "Cupper Penny")
    
}
