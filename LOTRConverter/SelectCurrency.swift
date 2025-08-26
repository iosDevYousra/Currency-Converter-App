//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by M-Store on 8/26/25.
//
import SwiftUI
struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack{
            //background image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack{
                //text
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                
                
                //icon
                CurrencyIcon(currencyImage: .copperpenny, currencyText: "Cupper Penny")
                CurrencyIcon(currencyImage: .copperpenny, currencyText: "Cupper Penny")
               
                
                //text
                Text("Select the currency you are would like to onvert to:")
                    .fontWeight(.bold)
                //icone
                
                
                //done button
                Button("Done"){
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .foregroundColor(.white)
                
                
                
                
                
                
            }
           .padding()
           .multilineTextAlignment(.center)
            
            
            
            
            
            
        }
       
    }
}
#Preview {
    SelectCurrency()
    
}

