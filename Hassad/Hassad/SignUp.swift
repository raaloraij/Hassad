//
//  SignUp.swift
//  Hassad
//
//  Created by Raghad on 20/07/1444 AH.
//

import SwiftUI

struct SignUp: View {
    
    @State private var email: String = ""
    @State private var businessName: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    
    var body: some View {
        
        NavigationView{

            ZStack{
                
                RoundedRectangle(cornerRadius: 33, style: .circular)
                    .fill(Color(UIColor(named: "defultColor")!))                        .frame(width: 396, height: 666)
                    .offset(x: 0, y: 95)
                VStack {
                    Text("Get Started")
                        .font(.title2)
                        .fontWeight(.bold)
                        .offset(x: 0, y: -20)

                        TextField("\(Image(systemName: "envelope.fill")) Email Address", text: $email)
                            .frame(width: 323)
                            .padding()
                            .background(Color("textfields"))
                            .cornerRadius(14)
                            .overlay(RoundedRectangle(cornerRadius: 14)
                                .stroke(Color("borders"), lineWidth: 1))
                            .offset(x:0, y: -5)

                        TextField("\(Image(systemName: "person.fill")) Business Name", text: $businessName)
                            .frame(width: 323)
                            .padding()
                            .background(Color("textfields"))
                            .cornerRadius(14)
                            .overlay(RoundedRectangle(cornerRadius: 14)
                                .stroke(Color("borders"), lineWidth: 1))
                            .offset(x:0, y: 10)
                
                        SecureField("\(Image(systemName: "lock.fill")) Password", text: $password)
                            .frame(width: 323)
                            .padding()
                            .background(Color("textfields"))
                            .cornerRadius(14)
                            .overlay(RoundedRectangle(cornerRadius: 14)
                                .stroke(Color("borders"), lineWidth: 1))
                            .offset(x:0, y: 25)

                        SecureField("\(Image(systemName: "lock.fill")) Confirm Password", text: $confirmPassword)
                            .frame(width: 323)
                            .padding()
                            .background(Color("textfields"))
                            .cornerRadius(14)
                            .overlay(RoundedRectangle(cornerRadius: 14)
                                .stroke(Color("borders"), lineWidth: 1))
                            .offset(x:0, y: 45)
                    
                    
                    Button("Sign Up") {
                        print("sss")
                    }
                    .frame(width: 335.0, height: 30.0)
                    .font(.title2)
                    .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(UIColor(named: "darkBlue")!))
                        .cornerRadius(17.5)
                        .offset(x: 0,y: 60)

                    
                    HStack(spacing: 0){
                        Text("Don't Have an Account?")
                            .foregroundColor(Color.gray)
                        NavigationLink(destination: SignIn().navigationBarBackButtonHidden(true)) {
                            Text(" Sign up")
                                .fontWeight(.bold)
                                .foregroundColor(Color("text"))
                        }
                    }
                    .offset(x: 0, y: 90)
                }
                
            }
            .frame(width: /*@START_MENU_TOKEN@*/800.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/800.0/*@END_MENU_TOKEN@*/)
            .background(Color(UIColor(named: "lightBlue")!))
        }
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
