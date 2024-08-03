//
//  ContentView.swift
//  LOTRConverter
//
//  Created by M-Store on 8/2/24.
//

import SwiftUI

struct ContentView: View {
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
                        //text field
                        Text("TextFields")
                        
                        
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
                        //text field
                        
                        Text("TextFields")
                        
                        
                    }

                    
                    
                }
              //info button
                
                
            }
            
          
            
        }
    }
}

#Preview {
    ContentView()
}
