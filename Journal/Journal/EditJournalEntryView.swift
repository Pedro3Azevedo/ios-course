//
//  EditJournalEntryView.swift
//  Journal
//
//  Created by pedro azevedo on 08/01/2026.
//

import SwiftUI
import SwiftData

struct EditJournalEntryView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) var dismiss
    @State var editingEntry: JournalEntry
    @State var editMode: Bool = false
    
    var body: some View {
        if editMode {
            Form {
                TextField("Title", text: $editingEntry.title)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                
                DatePicker("Date", selection: $editingEntry.date, displayedComponents: .date)
                HStack{
                    
                    Slider(value: $editingEntry.rating, in: 1...5, step: 1)
                        .frame(width: 200)
                    Spacer()
                    Text(String(repeating: "⭐️", count: Int(editingEntry.rating)))
                    
                }
                TextEditor(text: $editingEntry.text)
                    .frame(height: 150)
                    .padding(10)
            }
            .toolbar{
                Button("Delete"){
                    modelContext.delete(editingEntry)
                    dismiss()
                }
                .foregroundStyle(Color.red)
                Button("Done"){
                    editMode = false
                }
                .bold()
            }
            
        }else{
            JournalEntryDetailedView(entry: editingEntry)
                .toolbar{
                    Button("Edit"){
                        editMode = true
                    }
                }
        }
        
    }
}

#Preview {
    EditJournalEntryView(editingEntry: JournalEntry(
                title: "Headache day",
                text: "I woke up with a headache",
                rating: 2,
                date: Date.now.addingTimeInterval(-24 * 60 * 60)
            ))
}
