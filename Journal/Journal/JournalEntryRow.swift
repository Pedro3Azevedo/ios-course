//
//  JournalEntryRow.swift
//  Journal
//
//  Created by pedro azevedo on 08/01/2026.
//

import SwiftUI

struct JournalEntryRow: View {
    var entry: JournalEntry
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text(entry.title)
                    .font(.headline)
                Text("-")
                Text(entry.text)
                    .lineLimit(1)
                    .foregroundStyle(Color.secondary)
            }
            .padding(.bottom, 10)
            
            HStack{
                Text(String(repeating: "⭐️", count: Int(entry.rating)))
                Spacer()
                Text(entry.date, style: .date)
                    .font(Font.caption.weight(.light))
            }
        }
    }
}
