//
//  ContentView.swift
//  Journal
//
//  Created by pedro azevedo on 08/01/2026.
//

import SwiftUI
import SwiftData

struct JounalEntriesListView: View {
    @Environment(\.modelContext) private var modelContext
    @Query(sort: \JournalEntry.date, order: .reverse) private var journalEntries: [JournalEntry]
    @State var showCreateView: Bool = false
    var body: some View {
        NavigationSplitView{
            List {
                ForEach(journalEntries) {entry in
                    NavigationLink(destination: EditJournalEntryView(editingEntry: entry)){
                        JournalEntryRow(entry: entry)
                    }
                }
                .onDelete(perform: deleteEntries)
            }
        .navigationTitle(("Journal Entries (\(journalEntries.count))"))
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing){
                EditButton()
            }
            ToolbarItem {
                
                Button(action: {showCreateView = true}){
                    Label("New Entry", systemImage: "plus")
                }
            }
        }
        .sheet(isPresented: $showCreateView){
            CreateJournalEntryView()
        }
        
        } detail: {
            Text("Select an entry to see more")
        }
        
    }
   
    private func addNewEntry() {
        withAnimation {
            let newEntry = JournalEntry(
                        title: "Good learning day",
                        text: "I have leant iOS development",
                        rating: 4,
                        date: Date()
                    )
            modelContext.insert(newEntry)
        }
    }
    
    private func deleteEntries(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(journalEntries[index])
            }
        }
    }
    
}

#Preview {
    JounalEntriesListView()
        .modelContainer(for: JournalEntry.self, inMemory: true)
}
