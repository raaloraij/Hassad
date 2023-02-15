//
//  ContentView.swift
//  Hassad
//
//  Created by Raghad on 18/07/1444 AH.
//

import SwiftUI

struct SignIn: View {
    
    @State private var email = ""
    @State private var password = ""
    @State var emailIsValid: Bool = true

    public init(email: String = "")

        {

            self.email = email

        }
    
    
    
    var body: some View {
        
        NavigationView{
//adding a navigationView just in case cause idk if i should have a button or a navigationLink hehe
            ZStack{
                
                RoundedRectangle(cornerRadius: 33, style: .circular)
                    .fill(Color(UIColor(named: "defultColor")!))
                    .frame(width: 396, height: 666)
                    .offset(x: 0, y: 95)
                VStack {
                    Text("Welcome Back")
                        .font(.title2)
                        .fontWeight(.bold)
                        .offset(x: 0, y: -20)

                    TextField("\(Image(systemName: "person.fill")) Email Address", text: $email)
                        .keyboardType(.emailAddress)
                        .frame(width: 323)
                        .padding()
                        .background(Color("textfields"))
                        .cornerRadius(14)
                        .overlay(RoundedRectangle(cornerRadius: 14)
                            .stroke(Color("borders"), lineWidth: 1))
                        .offset(x:0, y: -5)
                            

                    SecureField("\(Image(systemName: "lock.fill")) Password", text: $password)
                        .frame(width: 323)
                        .padding()
                        .background(Color("textfields"))
                        .cornerRadius(14)
                        .overlay(RoundedRectangle(cornerRadius: 14)
                        .stroke(Color("borders"), lineWidth: 1))
                        .offset(x:0, y: 10)

                    
                    Button("Sign In") {
                        print("sss")
                    }
                    .frame(width: 335.0, height: 30.0)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(UIColor(named: "darkBlue")!))
                    .cornerRadius(17.5)
                    .offset(x: 0,y: 25)

                    HStack(spacing: 0){
                        Text("Forgot your")
                        Button(" Password") {
                            print("reset password link")
                        }
                        .foregroundColor(Color(UIColor(named: "lightBlue")!))
                        Text("?")
                    }
                    .offset(x: 0, y: 40)
                    
                    HStack{
                        Text("Don't Have an Account?")
                            .foregroundColor(Color.gray)
    //                    Button("Sign Up") {
    //                        print("sign up link")
    //                    }
    //                    .fontWeight(.bold)
    //                    .foregroundColor(Color.black)
    //                    .offset(x: 90, y: 85)
                        NavigationLink(destination: SignUp().navigationBarBackButtonHidden(true)) {
                            Text("Sign up")
                                .fontWeight(.bold)
                                .foregroundColor(Color("text"))
                        }
                    }
                    .offset(x: 0, y: 110)
                    ZStack{
                        Divider()
                            .frame(width: 350.0)
                        Text("or")

                            .frame(width: 60, height: 20)
                            .background(Color(UIColor(named: "defultColor")!))
                    }
                    .offset(x: 0, y: 100)
                    
                    Button("\(Image(systemName: "apple.logo")) Continue with Apple") {
                        print("Apple")
                    }
                    .frame(width: 322.0, height: 30.0)
                    .font(.title2)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(8)
                        .offset(x: 0, y: 100)

                }
                

                
                

                



            }
            .frame(width: /*@START_MENU_TOKEN@*/800.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/800.0/*@END_MENU_TOKEN@*/)
            .background(Color(UIColor(named: "lightBlue")!))
        }
    }
    
}

struct SignIn_Previews: PreviewProvider {
    
    static var previews: some View {
        SignIn()
    }
}
