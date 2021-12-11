//
//  RowView.swift
//  TabikueApp
//
//  Created by 佐々木翔太 on 2021/08/26.
//

import SwiftUI

struct RowView: View {
    var photo:PhotoData
    
    
    var body: some View {
        HStack{
            Image(photo.imageName)
                .resizable()
                .frame(width: 80, height: 80)
            Text(photo.title)
                .multilineTextAlignment(.center)
                .font(.system(size: 15))
            Spacer()
        }
        .background(Color(red: 0.9, green: 0.9, blue: 0.8))
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(photo:photoArray[1])
            .previewLayout(.fixed(width: 300, height: 80))
    }
}
