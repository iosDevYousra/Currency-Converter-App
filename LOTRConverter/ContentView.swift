//
//  ContentView.swift
//  LOTRConverter
//
//  Created by M-Store on 8/2/24.
//
import SwiftUI

struct ContentView: View {
    @State var showExhangeInfo = false
    @State var leftAmount = ""
    @State var rightAmount = ""
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
                            Image(.silverpenny)
                                .resizable()
                                .scaledToFit()
                                .frame(height:33)
                                
                            
                            //curency text
                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                                
                            
                        }
                        .padding(.bottom, -5)
                        
                        
                        //text field
                        TextField("Amount", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
                           
                        
                        
                        
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
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                            //curency image
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height:33)
                                
                            
                        }
                        .padding(.bottom, -5)
                        //text field
                        
                        TextField("Amount", text: $rightAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                        
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
                    .sheet(isPresented: $showExhangeInfo){
                        ExchangeInfo()
                    }
                }
            }
            
            
        }
    }
}

#Preview {
    ContentView()
}
