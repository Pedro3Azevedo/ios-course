//
//  DefaultImageView.swift
//  CourseList
//
//  Created by pedro azevedo on 08/01/2026.
//

import SwiftUI

struct DefaultImageView: View {
    var body: some View {
        VStack{
            ProgressView()
                .padding()
            Image(systemName: "books.vertical")
                .font(.largeTitle)
                .padding(.bottom, 3)
            Text("Grabbing the images...")
                .foregroundStyle(Color.secondary)
        }
        .padding(.vertical, 50)
        .frame(maxWidth: .infinity)
        .background{
            Color.black.opacity(0.1)
        }
    }
}

#Preview {
    DefaultImageView()
}
