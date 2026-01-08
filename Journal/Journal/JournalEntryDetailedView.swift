//
//  JournalEntryDetailedView.swift
//  Journal
//
//  Created by pedro azevedo on 08/01/2026.
//

import SwiftUI

struct JournalEntryDetailedView: View {
    let entry: JournalEntry
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                HStack{
                    Text(String(repeating: "⭐️", count: Int(entry.rating)))
                    Spacer()
                    Text(entry.date, style: .date)
                }
                .padding(.bottom, 10)
                .italic(true)
                Text(entry.text)
            }
            .padding(30)
        }
        .navigationTitle(entry.title)

    }
}

