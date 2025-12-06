import SwiftUI

struct ContentView: View {
    @State private var username=""
    @State private var password=""
    
    var body: some View{
        ZStack{
            Color(red:18/255, green: 18/255, blue: 20/255)
                .ignoresSafeArea()
            VStack(spacing: 50){
                VStack(spacing: 18) {
                    Text("Welcome Back!")
                        .font(.system(size: 24))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text("Please sign in to your account.")
                        .font(.system(size: 16))
                        .foregroundStyle(Color.gray)
                }
                VStack(spacing: 13){
                    TextField("Username", text:$username)
                        .padding(.vertical, 27)
                        .foregroundColor(.white)
                        .background(Color(red: 32/255, green: 32/255, blue: 40/255))
                        .cornerRadius(18)
                    SecureField("Password",
                                text: $password)
                    .padding(.vertical, 27)
                    .foregroundColor(.white)
                    .background(Color(red:32/255, green: 32/255, blue: 40/255))
                    .cornerRadius(18)
                    HStack{
                        Spacer()
                        Button("Forgot Password?"){
                        }
                        .font(.caption)
                        .foregroundColor(.gray)
                        }
                }
                VStack(spacing: 40){
                    VStack(spacing: 13){
                        Button(action:{}){
                            Text("Sign in")
                                .padding(.vertical, 27)
                                .frame(maxWidth: .infinity)
                                .font(.subheadline)
                        }
                        .foregroundColor(.white)
                        .background(Color(red:73/255, green: 84/255, blue: 242/255))
                        .cornerRadius(18)
                        Button(action:{}){
                            Text("Sign in with Google")
                                .padding(.vertical, 27)
                                .frame(maxWidth:
                                        .infinity)
                                .font(.subheadline)
                                .foregroundStyle(Color.black)
                        }
                        .background(Color.white)
                        .cornerRadius(18)
                        Button(action:{}){
                            Text("Sign in with Facebook")
                                .padding(.vertical, 27)
                                .frame(maxWidth: .infinity)
                                .font(.subheadline)
                                .foregroundStyle(Color.white)
                        }
                        .background(Color(red:62/255, green:68/255, blue: 148/255))
                        .cornerRadius(18)
                    }
                    HStack{
                    Text("Don't have an Account?")
                            .foregroundStyle(Color.white)
                            .font(.subheadline)
                        Button("Sign up"){
                            
                        }
                        .font(.subheadline)
                        .foregroundStyle(Color(red:103/255, green:112/255, blue:230/255))
                        }
                  
                    
                }

                }
            .padding()
            }
        }
    }
#Preview{
    ContentView()
}
