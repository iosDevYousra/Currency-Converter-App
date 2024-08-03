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
                            //curency text
                            
                            
                        }
                        //text field
                        
                        
                        
                        
                    }
                //equal sign
                //right conversion section
                    VStack{
                      //curency
                        HStack{
                          //curency text
                            //curency image
                            
                            
                        }
                        //text field
                        
                        
                        
                        
                    }

                    
                    
                }
                
                
                
            }
            
          
            
        }
    }
}

#Preview {
    ContentView()
}
