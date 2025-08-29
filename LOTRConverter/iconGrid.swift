//
//  iconGrid.swift
//  LOTRConverter
//
//  Created by M-Store on 8/28/25.
//

import SwiftUI
struct iconGrid: View {
    //@Environment(\.dismiss) var dismiss
    @Binding var currency: Currency
    var body: some View {
        
        //icon
        LazyVGrid(columns: [GridItem(),GridItem(),GridItem()]){
            
            
            ForEach(Currency.allCases){ currency in
                if self.currency == currency{
                    CurrencyIcon(currencyImage: currency.image, currencyText: currency.name)
                        .shadow(color: .black, radius: 10)
                        .overlay{
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(lineWidth: 3)
                                .opacity(0.5)
                        }
                }else{
                    CurrencyIcon(currencyImage: currency.image, currencyText: currency.name)
                        .onTapGesture {
                            self.currency = currency
                          
                        }
                    
                }
                
            }
            
        }
        
        
    }
           
}
#Preview {
    @Previewable @State  var currency: Currency = .silverPiece
    
    iconGrid(currency: $currency)
}

