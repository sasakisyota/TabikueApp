//
//  photoView.swift
//  TabikueApp
//
//  Created by 佐々木翔太 on 2021/08/25.
//

import SwiftUI

struct PhotoView: View {
    var photo:PhotoData
    let w:CGFloat = UIScreen.main.bounds.width - 20
    @State var isShow = true
    @State var opaValue = 1.0
    @State var btnText = "クリア"
    
    var body: some View {
        
        VStack {
            ZStack{
            
            Image(photo.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width:200, height: 200)
                .clipShape(Rectangle())
                .overlay(Rectangle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
                Image(systemName: "star.fill")
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                    .foregroundColor(Color.yellow)
                    .padding()
                    .frame(width: 100)
                    .opacity(opaValue)
                    
            }
            //ボタンに変えたい
            Text(photo.title)
                .font(.body)
                .fontWeight(.black)
                .foregroundColor(Color.black)
                .padding()
            
            Button(action: {
                isShow.toggle()
                btnText = isShow ? "クリア" : "未クリア"
                withAnimation(.easeInOut(duration: 2)){
                opaValue = isShow ? 1.0 : 0.0
                }
            })
            {
                Text(btnText).font(.title2)
            }
           
        }
        .padding()
        
    }
}


struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView(photo:photoArray[2])
    }
}
