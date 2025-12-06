import SwiftUI

struct ContentView: View {
    @State private var username=""
    @State private var password=""
    
    var body: some View{
        ZStack{
            Color(red:18/255, green: 18/255,blue: 20/255)
                .ignoresSafeArea()
            VStack(spacing: 20){
                
                Text("Welcome back!")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                Text("Please sign in to your account.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                
                VStack(spacing: 16){
                    TextField("Username", text:$username)
                        .padding()
                        .background(Color(red:32/255, green: 34/255, blue: 40/255))
                        .foregroundColor(.white)
                        .cornerRadius(16)
                    SecureField("Password", text:$password)
                        .padding()
                        .background(Color(red:32/255, green: 34/255, blue: 40/255))
                        .foregroundColor(.white)
                        .cornerRadius(16)
                }
                HStack {
                    Spacer()
                    Button("Forgot Password?"){
                        
                    }
                    .font(.footnote)
                    .frame(maxWidth: .infinity)
                }
                Button(action:{})
                {
                    Text("Sign in")
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .padding()
                }
                .background(Color.indigo)
                .foregroundColor(.white)
                .cornerRadius(24)
                Button(action:{})
                {
                    Text("Sign in with Google")
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .padding()
                }
                .background(Color.white)
                .foregroundColor(.black)
                .cornerRadius(24)
                Button(action:{})
                {
                    Text("Sign in with FaceBook")
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .padding()
                }
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(24)
            }
            .padding(.horizontal, 4)
        }
    }
}

#Preview {
    ContentView()
}
