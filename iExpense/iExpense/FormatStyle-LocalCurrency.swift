//
//  FormatStyle-LocalCurrency.swift
//  iExpense
//
//  Created by Brandon Johns on 6/28/23.
//

import Foundation


extension FormatStyle where Self == FloatingPointFormatStyle<Double>.Currency {
    
    static var localCurrency: Self
    {
       .currency(code: Locale.current.currency?.identifier ?? "USD")
    }
}
