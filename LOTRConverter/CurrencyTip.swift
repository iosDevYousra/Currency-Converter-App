//
//  CurrencyTip.swift
//  LOTRConverter
//
//  Created by M-Store on 8/31/25.
//

import TipKit
struct CurrencyTip : Tip{
    var title = Text("change currency")
    var message: Text? = Text("You can tap the left or right currency to bring up the select currency Screen.")
    var image: Image? = Image(systemName: "hand.tap.fill")
    
}
