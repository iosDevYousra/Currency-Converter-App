//
//  ContentView.swift
//  LOTRConverter
//
//  Created by M-Store on 8/2/24.
//
import SwiftUI
struct ContentView: View {
    @State var showExhangeInfo = false
    @State var showSelectCurrency = false
    @State var leftAmount = ""
    @State var rightAmount = ""
    @State var leftCurrency: Currency = .silverPiece
    @State var rightCurrency: Currency = .goldPiece
    @FocusState var leftTyping
    @FocusState var rightTyping
    var body: some View {
        ZStack{
            //background image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            VStack{
                //prancy pony image
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                //currency exchange text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                //curency convention section
                HStack{
                    //left conversion section
                    VStack{
                        //curency
                        HStack{
                            //curency image
                            Image(leftCurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height:33)
                            //curency text
                            Text(leftCurrency.name)
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        .padding(.bottom, -5)
                        .onTapGesture {
                            showSelectCurrency.toggle()
                        }
                        //text field
                        TextField("Amount", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
                            .focused($leftTyping)
                        
                    }
                    //equal sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .symbolEffect(.pulse)
                    //right conversion section
                    VStack{
                        //curency
                        HStack{
                            //curency text
                            Text(rightCurrency.name)
                                .font(.headline)
                                .foregroundStyle(.white)
                            //curency image
                            Image(rightCurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height:33)
                        }
                        .padding(.bottom, -5)
                        .onTapGesture {
                            showSelectCurrency.toggle()
                        }
                        //text field
                        TextField("Amount", text: $rightAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                            .focused($rightTyping)
                          
                    }
                }
                .padding()
                .background(.black.opacity(0.5))
                .clipShape(.capsule)
                Spacer()
                //info button
                HStack {
                    Spacer()
                    Button{
                        showExhangeInfo.toggle()
                        print("showExhangeInfo value: \(showExhangeInfo)")
                    }
                    
                    label: {Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    
                    .padding(.trailing)
                }
            }
        }
                    .onChange(of: leftAmount){
                        if leftTyping {
                            rightAmount = leftCurrency.convert(leftAmount, to: rightCurrency)
                    }
                }
                    .onChange(of: rightAmount){
                        if rightTyping{
                            leftAmount = rightCurrency.convert(rightAmount, to: leftCurrency)
                        }
                    }
                    .onChange(of: leftCurrency){
                        leftAmount = rightCurrency.convert(rightAmount, to: leftCurrency)
                    }
                    .onChange(of: rightCurrency){
                        rightAmount = leftCurrency.convert(leftAmount, to: rightCurrency)
                    }
                    .sheet(isPresented: $showExhangeInfo){
                        ExchangeInfo()
                    }
        
                    .sheet(isPresented: $showSelectCurrency){
                        SelectCurrency(topCurrency: $leftCurrency, bottomCurrency: $rightCurrency)
           }
         }
       }
        
#Preview {
    ContentView()
}
