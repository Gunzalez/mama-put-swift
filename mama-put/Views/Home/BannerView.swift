//
//  BannerView.swift
//  mama-put
//
//  Created by Segun Konibire on 14/01/2023.
//

import SwiftUI

struct BannerView: View {
    @State var noOfRecipies: String;
    var body: some View {
        HStack(spacing: 0){
            Text("🥘")
                .font(.system(size: 70))
                .padding(.trailing, 10)
            
            VStack(spacing: 0) {
                Text("You have \(noOfRecipies) amazing meals to try! You're gonna love this!")
                    .font(.body)
                    .foregroundColor(.black)
            }
        }
        .padding(.vertical, 10)
        .frame(maxWidth: .infinity)
        .background(Color("lightGreen"), in: RoundedRectangle(cornerRadius: 20))
    }
}

struct BannerView_Previews: PreviewProvider {
    static var previews: some View {
        BannerView(noOfRecipies: "20")
    }
}
