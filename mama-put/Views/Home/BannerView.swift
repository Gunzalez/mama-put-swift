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
        HStack{
            Text("🥘")
                .font(.system(size: 80))
            
            VStack(alignment: .leading, spacing: 10) {
                Text("You have \(noOfRecipies) meals to try!")
                    .font(.body)
                    .foregroundColor(.black)
            }
        }
        .frame(maxWidth: .infinity)
        .background(Color("lightGfeen"), in:
                        RoundedRectangle(cornerRadius: 20))
    }
}

struct BannerView_Previews: PreviewProvider {
    static var previews: some View {
        BannerView(noOfRecipies: "20")
    }
}
