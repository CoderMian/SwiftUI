//
//  LoginView.swift
//  LoginSignUp
//
//  Created by devsaar on 07/06/2022.
//

import SwiftUI

struct LoginView: View {
    
    @State var index = 0
    @Namespace var name
    
    var body: some View {
        VStack{
            Image("swift")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
                
            
            HStack(spacing: 0){
                Button(action: {
                    
                    withAnimation(.spring()){
                        index = 0
                    }
                
                }){
                    VStack {
                        Text("Login ")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(index == 0 ? .black : .gray)
                        ZStack{
                            Capsule()
                                .fill(Color.black.opacity(0.04))
                                .frame(height: 4)
                            
                            if index == 0 {
                                Capsule()
                                    .fill(Color("Color"))
                                    .frame(height: 4)
                                    .matchedGeometryEffect(id: "Tab", in: name)
                            }
                        }
                    }
                }
                Button(action: {
                    
                    withAnimation(.spring()){
                        index = 1
                    }
                
                }){
                    VStack {
                        Text("Sign UP")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(index == 1 ? .black : .gray)
                        ZStack{
                            Capsule()
                                .fill(Color.black.opacity(0.04))
                                .frame(height: 4)
                            
                            if index == 1 {
                                Capsule()
                                    .fill(Color("Color"))
                                    .frame(height: 4)
                                    .matchedGeometryEffect(id: "Tab", in: name)
                            }
                        }
                    }
                }
            }
            .padding(.top,30)
            if index == 0{
                Login()
            }
            else {
                SignUP()
            }
             
            
        }
    }
}
struct Login : View {
    
    @State var password = ""

    
    var body: some View {
        VStack{
            HStack{
                VStack(alignment: .leading, spacing: 12){
                    Text("Hello Again,")
                        .fontWeight(.bold)
                    Text("Huzefa")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Button(action: {}){
                        Text("This isn't me")
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    }
                }

                Spacer(minLength: 0)
                Image("man")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 85, height: 85)
                    .clipShape(Circle())
            }
            .padding(.horizontal,25)
            .padding(.top,30)
            
            VStack(alignment: .leading, spacing: 15){
                MessageAlertsView(showAlert: true)
                Text("Password")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                
                
                TextField("password", text: $password)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                    .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: -5)
                
                
                Button(action: {}){
                    Text("Forget Password")
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                }
                .padding(.top, 10)
            }
            .padding(.horizontal,25)
            .padding(.top,25)
            
            Button(action: {}){
                Text("Login")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 50)
                    .background(
                        LinearGradient(gradient: .init(colors: [Color ("Color"),Color("Color1")]),startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .cornerRadius(8)
                
                
            }
            .padding(.horizontal,25)
            .padding(.top,25)
            
            Button(action: {}){
                HStack(spacing: 35){
                    
                    Image(systemName: "faceid")
                        .font(.system(size: 26))
                    
                    Text("Login with Face ID")
                        .font(.system(size: 20))
                    
                    Spacer(minLength: 0)
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 8).stroke(Color.blue))
                
            }
            .padding(.top,35)
            .padding(.horizontal,25)
            
            HStack{
            CustomIconView(iconName: "twitter")
            CustomIconView(iconName: "fb")
            CustomIconView(iconName: "google")
                
            }
        }
    }
}

var social = ["twitter", "fb","demo" ]

struct SignUP : View {
    @State var user = ""
    @State var password = ""

    
    var body: some View {
        VStack{
            HStack{
                VStack(alignment: .leading, spacing: 12){
                  
                    Text("Create Account")
                        .font(.title)
                        .fontWeight(.bold)
                    
                }

                Spacer(minLength: 0)
            }
            .padding(.horizontal,25)
            .padding(.top,30)
            
            VStack(alignment: .leading, spacing: 15){
                
                Text("UserName")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                
                TextField("email", text: $user)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                    .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: -5)
                
                Text("Password")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                
                TextField("password", text: $password)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                    .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: -5)
            
            }
            .padding(.horizontal,25)
            .padding(.top,25)
            
            
            Button(action: {}){
                Text("SignUP")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 50)
                    .background(
                        LinearGradient(gradient: .init(colors: [Color ("Color"),Color("Color1")]),startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .cornerRadius(8)
                
                
            }
            .padding(.horizontal,25)
            .padding(.top,25)
            
            Button(action: {}){
                HStack(spacing: 35){
                    
                    Image(systemName: "faceid")
                        .font(.system(size: 26))
                    
                    Text("Sign UP with Face ID")
                        .font(.system(size: 20))
                    
                    Spacer(minLength: 0)
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 8).stroke(Color.blue))
                
            }
            .padding(.top,35)
            .padding(.horizontal,25)
            
            HStack{
            CustomIconView(iconName: "twitter")
            CustomIconView(iconName: "fb")
            CustomIconView(iconName: "google")
                
            }
            
            .padding(.top,25)
        }
        }
    }
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    
    }
}


