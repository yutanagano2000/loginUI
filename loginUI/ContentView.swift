import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    
    var body: some View{
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack(spacing: 24){
                Text("Welcome Back!")
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
                        .foregroundStyle(Color.white)
                        .cornerRadius(16)
                    SecureField("Password", text:$password)
                        .padding()
                        .background(Color(red: 32/255, green: 34/255, blue: 40/255))
                        .foregroundStyle(Color.white)
                        .cornerRadius(16)

                }
                HStack {
                    Spacer()
                    Button("Forgot password?"){
                        
                    }
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity)
                }
                Button(action: {
                    
                }){
                    Text("Sign In")
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .padding()
                }
                .background(Color.indigo)
                .foregroundColor(.white)
                .cornerRadius(24)
                Button(action:{}){
                    Text("Sign in with Google")
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .padding()
                }
                .background(Color.white)
                .foregroundStyle(Color.black)
                .cornerRadius(24)
                
            }
            .padding(.horizontal, 6)
        }
    }
}

#Preview {
    ContentView()
}
