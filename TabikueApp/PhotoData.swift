//
//  PhotoData.swift
//  TabikueApp
//
//  Created by 佐々木翔太 on 2021/08/25.
//

import Foundation

var photoArray:[PhotoData] = makeData()

struct PhotoData: Identifiable{
    var id: Int
    var imageName:String
    var title:String
    
}

func makeData() -> [PhotoData] {
    var dataArray:[PhotoData] = []
    dataArray.append(PhotoData(id: 1, imageName: "koibitonoseiti", title: "恋人の聖地"))
    dataArray.append(PhotoData(id: 2, imageName: "kamanariya", title: "釜鳴屋平七夫婦像"))
    dataArray.append(PhotoData(id: 3, imageName: "akaoha-bu&ro-zuga-denn", title: "アカオハーブ＆ローズガーデン"))
    dataArray.append(PhotoData(id: 4, imageName: "hasiriyu", title: "走り湯"))
    return dataArray
}
