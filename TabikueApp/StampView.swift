//
//  StampView.swift
//  TabikueApp
//
//  Created by 佐々木翔太 on 2021/08/29.
//

import SwiftUI

struct StampView: View {
    var body: some View {
        VStack{
            ZStack{
                Image("StampCard4")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
        }
    }
}

struct StampView_Previews: PreviewProvider {
    static var previews: some View {
        StampView()
    }
}
