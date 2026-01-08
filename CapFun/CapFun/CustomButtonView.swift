import SwiftUI

struct CustomButtonView: View {
    
    var title: String
    var color: Color
    
    var body: some View {
        
        Text(title)
            .font(.body)
            .bold()
            .padding(10)
            .frame(maxWidth: .infinity)
            .background(color)
            .foregroundColor(.white)
            .cornerRadius(15)
    }
}

#Preview {
    CustomButtonView(title: "test", color: .red)
}
