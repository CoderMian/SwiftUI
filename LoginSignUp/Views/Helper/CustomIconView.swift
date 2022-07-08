//
//  CustomIconView.swift
//  LoginSignUp
//
//  Created by devsaar on 08/06/2022.
//

import SwiftUI

struct CustomIconView: View {
    
    var iconName: String = "twitter"

    var body: some View {
        HStack(spacing: 30){
            
            Button(action: {}){
                Image(iconName)
                //                            .renderingMode(.template)
                    .resizable()
                    .frame(width: 44, height: 44)
                //                            .foregroundColor(Color.blue)
                
            }
            
        }
        
        .padding(.top,25)
    }

}

struct CustomIconView_Previews: PreviewProvider {
    static var previews: some View {
        CustomIconView()
    }
}
