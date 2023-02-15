//
//  profile.swift
//  Hassad
//
//  Created by Raghad on 20/07/1444 AH.
//

import SwiftUI

struct profile: View {
    var body: some View {
        NavigationView{
            ZStack{
                Rectangle()
                    .frame(width: 421.0, height: 462.0)
                    .offset(x: 0, y: -208)
                    .foregroundColor(Color(UIColor(named: "lightBlue")!))
                VStack(spacing: 20){
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 109.0, height: 110.0)
                        .foregroundColor(Color(UIColor(named: "personColor")!))
                        .padding(4)
                        .overlay(
                        Circle()
                            .stroke(Color("personColor"), lineWidth: 1)
                        )
                    Text("Elegant Abaya")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .offset(x: 0, y: 10)

                    Text("_____________________________")
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                        .offset(x: 0, y: -15)
                    Text("Elegant.Abaya@outlook.com-")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .offset(x: 0, y: 0)

                    Text("__________________________________")
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                        .offset(x: 0, y: -25)
                        
                    
                    Button("Sign Out") {
                        print("sss")
                    }
                    .frame(width: 150.0, height: 30.0)
                    .font(.title2)
                    .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(UIColor(named: "darkBlue")!))
                        .cornerRadius(17.5)
                        .offset(x: 0,y: -30)

                }
                .offset(x: 0, y: -100)

            }
        }
    }
}

struct profile_Previews: PreviewProvider {
    static var previews: some View {
        profile()
    }
}
