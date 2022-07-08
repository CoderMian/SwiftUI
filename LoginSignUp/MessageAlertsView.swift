//
//  MessageAlertsView.swift
//  LoginSignUp
//
//  Created by devsaar on 08/06/2022.
//

import SwiftUI

struct MessageAlertsView: View {
    
    @State var showAlert: Bool = false
    var body: some View {
        Button("Login"){
            showAlert.toggle()
            
        }
        .alert(isPresented: $showAlert, content: {
            Alert(title: Text("Kindly fill the Password Section"))
        })
    }
}

struct MessageAlertsView_Previews: PreviewProvider {
    static var previews: some View {
        MessageAlertsView()
    }
}
