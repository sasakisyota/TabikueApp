//
//  PhotoDetailView.swift
//  TabikueApp
//
//  Created by 佐々木翔太 on 2021/08/26.
//

import SwiftUI

struct PhotoDetailView: View {
    var photo:PhotoData
    
    var body: some View {
        VStack(){
            Image(photo.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(photo.title)
            
            
            HStack(spacing: 40){
                Text("料金:\(photo.price)" + "円")
                Text("時間:\(photo.time)" + "分")
                
                
            }.padding([.top, .leading, .trailing], 30.0)
            .font(.title)
            
            Spacer()
            HStack(spacing: 100.0){
                Text(photo.detail)
                
            }.padding(.all)
            .font(.title)
            Spacer()
        }
        .padding(.vertical)
        .navigationBarTitle(Text(verbatim: photo.title))
        .navigationBarTitleDisplayMode(.inline)
        .background(Color(red: 0.9, green: 0.9, blue: 0.8))
    }
}

struct PhotoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoDetailView(photo:photoArray[2])
    }
}
