import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            // Background image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                // Prancing pony image
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                // Currency exchange text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                // Currency conversion section
                HStack{
                    // Left conversion section
                    VStack{
                        HStack{
                            // Currency image
                            Image(.silverpenny)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                            // Currency text
                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        // Text field
                        Text("TextFields")
                    }
                    
                    // Equal sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .symbolEffect(.pulse)
                    
                    // Right conversion section
                    VStack{
                        HStack{
                            // Currency text
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            // Currency image
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        // Text field
                        Text("TextFields")
                    }
                }
                Spacer()
                
                // First row of Info buttons
                HStack(spacing: 20) {
                    ForEach(0..<3) { _ in
                        Button{
                            // Action for info button
                        } label: {
                            Image(systemName: "info.circle.fill")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                        }
                    }
                }
                
                // Second row of Info buttons
                HStack(spacing: 20) {
                    ForEach(0..<6) { _ in
                        Button{
                            // Action for info button
                        } label: {
                            Image(systemName: "info.circle.fill")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
