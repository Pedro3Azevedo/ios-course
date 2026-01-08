//
//  CourseTileView.swift
//  CourseList
//
//  Created by pedro azevedo on 08/01/2026.
//

import SwiftUI

struct CourseTileView: View {
    
    let course: Course
    var body: some View {
        ZStack{
            AsyncImage(url: URL(string: course.image)){ response in
                switch response{
                case .success(let image):
                    image.resizable()
                        .scaledToFill()
                default:
                    DefaultImageView()
                }
            }
            VStack{
                Spacer()
                HStack{
                    Text(course.title)
                        .padding(.vertical, 4)
                        .padding(.horizontal)
                        .foregroundStyle(.white)
                        .bold()
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                .background{
                    Color.purple.opacity(0.9)
                }
//                Text(course.subtitle)
//                    .font(.subheadline)
//                    .foregroundStyle(.white)
//                    .background{
//                        Color.purple.opacity(0.9)
//                    }
            }
        }
    }
}

#Preview {
    CourseTileView(course: Course(id: 1, image: "https://zappycode.com/media/course_images/3840036_f936.jpg", title: "Python in a Weekend: The Easiest Python for Beginners Course", subtitle: "Jump into Python by Building Your First 3 Python-Based Projects"))
        .frame(height: 200)
}
