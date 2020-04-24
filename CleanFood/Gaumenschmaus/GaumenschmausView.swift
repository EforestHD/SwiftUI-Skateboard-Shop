//
//  GaumenschmausView.swift
//  CleanFood
//
//  Created by Ewald Kerner on 16.03.20.
//  Copyright © 2020 Ewald Kerner. All rights reserved.
//

import SwiftUI

struct GaumenschmausView: View {
        var body: some View {
            
            NavigationLink(destination: GaumenschmausDetail()) {
            Image("wheels").renderingMode(.original)
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.white, lineWidth: 2)
            )
                .shadow(color: .black, radius: 16, x: 10, y: 10)
                
                    .overlay(Text("Wheels")
                        .font(.system(size: 45))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .shadow(color: .black, radius: 2,x:3, y: 3)
                        .padding(), alignment: .bottomLeading
                )

            }
            
        }
    }

struct GaumenschmausView_Previews: PreviewProvider {
    static var previews: some View {
        GaumenschmausView()
    }
}
