//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by M-Store on 8/26/25.
//
import SwiftUI
struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @Binding var topCurrency: Currency
    @Binding var bottomCurrency: Currency
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
                iconGrid(currency : $topCurrency)
                //text
                Text("Select the currency you are would like to onvert to:")
                    .fontWeight(.bold)
                    .padding(.top)
                //icone
                iconGrid(currency : $bottomCurrency)
                    .padding(.bottom)
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
            .foregroundStyle(.black)
        }
        .onTapGesture {
            print("select top currency: \(topCurrency)")
            print("select buttom currency: \(bottomCurrency)")
        }
    }
}
       


#Preview {
    @Previewable @State var topCurrency: Currency = .silverPenny
    @Previewable @State var bottomCurrency: Currency = .goldPenny

    SelectCurrency(topCurrency: $topCurrency,
                   bottomCurrency: $bottomCurrency)
}



