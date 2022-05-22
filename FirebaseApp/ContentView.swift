//
//  ContentView.swift
//  FirebaseApp
//
//  Created by Christopher Palma Talaverano on 18/05/22.
//

import SwiftUI

struct ContentView: View {
    @State var isLoginmode = false
    
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    Picker(selection: $isLoginmode, label: Text("Picker")){
                        Text("Login")
                            .tag(true)
                        Text("Create Account")
                            .tag(false)
                    }.pickerStyle(SegmentedPickerStyle())
                        
                    Button {
                    } label: {
                        Image("logo")
                            .resizable()
                            .frame(width: 80, height: 80)
                                .padding()
                        }
                    Group{
                    TextField("Email",text: $email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                    SecureField("Password",text: $password)
                    }.padding().background(Color.white)
                    
            
                    if !isLoginmode{
                        Group{
                        SecureField("Repeat Password",text: $password)
                        TextField("Full Name",text: $email)
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                        }.padding().background(Color.white)
                    }
                    Text(" ")
                    Button {
                        handleAction()
                    }label: {
                        HStack{
                            Spacer()
                        Text(isLoginmode ? "Login" : "Create Account")
                                .foregroundColor(.white)
                                .padding(.vertical,10)
                            Spacer()
                        }.background(Color.purple)
                        
                    }
                }.padding()
                .background(Color(.init(white: 0, alpha: 0.05)))
            
                }
            .navigationTitle(isLoginmode ? "Login" : "Create Account")
            }
        }
    private func handleAction(){
        if isLoginmode{
            print("Yes")
        }else{
            print("No")
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
