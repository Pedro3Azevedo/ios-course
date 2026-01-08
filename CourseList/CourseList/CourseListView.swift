//
//  ContentView.swift
//  CourseList
//
//  Created by pedro azevedo on 08/01/2026.
//


import SwiftUI

struct CourseListView: View {
    
    @State var courses: [Course] = []
    
    var body: some View {
        NavigationStack{
            if courses.count == 0{
                VStack{
                    ProgressView().padding(20)
                    Text("Loading...")
                        .onAppear{
                        fetchCourses()
                        }.foregroundStyle(Color.purple)
                }
            }else{
                ScrollView{
                    VStack(spacing: 20){
                        ForEach(courses){ course in
                            CourseTileView(course: course)
                        }
                    }
                }
                .navigationTitle(Text("Courses"))
            }
        }
        
    }
    
    func fetchCourses(){
        if let apiURL = URL(string: "https://zappycode.com/api/courses?format=json"){
            var request = URLRequest(url: apiURL)
            request.httpMethod = "GET"
            URLSession.shared.dataTask(with: request) { (data, response, error) in
                if let courseData = data{
                    //print(String(data: courseData, encoding: .utf8) ?? "ERROR")
                    if let coursesFromAPI = try? JSONDecoder().decode([Course].self, from: courseData){
                        courses = coursesFromAPI
                        print(courses)
                    }
                    
                }
                
            }.resume()
        }
        
    }
}

#Preview {
    CourseListView()
}
