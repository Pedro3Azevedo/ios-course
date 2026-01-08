//
//  CreateJournalEntryView.swift
//  Journal
//
//  Created by pedro azevedo on 08/01/2026.
//

import SwiftUI
import SwiftData

struct CreateJournalEntryView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) var dismiss
    @State var title: String = ""
    @State var text: String = ""
    @State var rating: Double = 3.0
    @State var date: Date = Date()
    
    
    var body: some View {
        NavigationStack{
            Form {
                TextField("Title", text: $title)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                
                DatePicker("Date", selection: $date, displayedComponents: .date)
                HStack{
                    
                    Slider(value: $rating, in: 1...5, step: 1)
                        .frame(width: 200)
                    Spacer()
                    Text(String(repeating: "⭐️", count: Int(rating)))
                    
                }
                TextEditor(text: $text)
                    .frame(height: 150)
                    .padding(10)
            }
            .toolbar{
                ToolbarItem( placement: .navigationBarLeading){
                    Button("Cancel"){
                        dismiss()
                    }
                }
                ToolbarItem( placement: .navigationBarTrailing){
                    
                    Button("Save"){
                        withAnimation {
                            let newEntry = JournalEntry(
                                title: title,
                                text: text,
                                rating: rating,
                                date: date
                            )
                            modelContext.insert(newEntry)
                            dismiss()
                        }
                    }
                }
            }
        }
    }
}

