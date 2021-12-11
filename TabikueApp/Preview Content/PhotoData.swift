//
//  PhotoData.swift
//  TabikueApp
//
//  Created by 佐々木翔太 on 2021/08/26.
//

import Foundation



var photoArray:[PhotoData] = makeData()

struct PhotoData: Identifiable {
    var id:Int
    var imageName:String
    var title:String
    var price:String
    var time:String
    var detail:String
}

func makeData()->[PhotoData]{
    var dataArray:[PhotoData] = []
    dataArray.append(PhotoData(id: 1, imageName: "moa", title: "MOA美術館",price: "500", time: "60", detail: "相模湾や伊豆半島を一望、景観美も堪能できる美術館。約3500点の所蔵美術作品があります！所蔵作品を観賞しよう！"))
    dataArray.append(PhotoData(id: 2, imageName: "kamanariya", title: "釜鳴屋七夫婦像",price: "0", time: "30", detail: "文化勲章受章された澤田政廣先生作の像。この像と一緒に写真を撮ろう！！"))
    dataArray.append(PhotoData(id: 3, imageName: "atamihuru-tuking", title: "熱海フルーツキング",price: "500",time: "5", detail: "サンビーチの傍の王冠マークのお店！ふわふわのクリームを使ったフルーツサンドを味わおう！"))
    dataArray.append(PhotoData(id: 4, imageName: "atamipurinsyokudou", title: "熱海プリン食堂", price: "900",time: "1", detail: "黄色い暖簾が目印のお店で、目の前は「長浜海水浴場」という開放感もあるロケーション！！名物のプリンパンケーキを食べよう！！"))
    dataArray.append(PhotoData(id: 5, imageName: "koibitonoseiti", title: "恋人の聖地", price: "0", time: "10", detail:"恋愛成就すると噂のムーンテラス！ここで手形に手を乗せて写真を撮ろう！！"))
    dataArray.append(PhotoData(id: 6, imageName: "sanremokouen", title: "サンレモ公園", price: "0", time: "20", detail:"イタリアのサンレモ市との姉妹都市締結を記念した公園で園内にはヤシの木がいっぱい。この公園に設置されている記念碑を見に行こう！"))
    dataArray.append(PhotoData(id: 7, imageName: "marinspaatami", title: "マリンスパあたみ", price: "1360", time: "60", detail:"温泉・プールやお食事処がある健康ランド。子供から大人まで安心して楽しめる施設。熱海の美しい海をながめながら温泉に入ろう！"))
    dataArray.append(PhotoData(id: 8, imageName: "sanremo", title: "熱海遊覧船サンレモ", price: "1300", time: "30", detail:"潮風を感じながら熱海の美しい海を感じられる遊覧船。海中展望室からは泳いでいる魚も観察できます。この遊覧船で熱海の美しい海を写真に収めよう！"))
    dataArray.append(PhotoData(id: 9, imageName: "yamaguchibijyutukan", title: "熱海山口美術館", price: "1400", time: "60", detail:"山口文化財団が所蔵する作品の中から厳選されたコレクションが展示されている美術館。人間国宝の茶器で抹茶を飲んでみませんか？"))
    dataArray.append(PhotoData(id: 10, imageName: "sinsuikouen", title: "熱海親水公園", price: "0", time: "20", detail:"ヨーロッパ風テラスが特徴の港を一望できる公園。この公園を歩きながら熱海の美しい海を眺めよう！"))
    dataArray.append(PhotoData(id: 11, imageName: "dairokuten", title: "大六天尊神社", price: "0", time: "5", detail:"かつて仏教の魔王・第六天魔王を祀っていた神社の１つ。西日本では見られない神社でちょうど静岡が境目。この神社でお参りして日頃の感謝をお伝えしよう！"))
    dataArray.append(PhotoData(id: 12, imageName: "yuzenjinjya", title: "湯前神社", price: "100", time: "20", detail:"熱海の温泉を守っている縁の下の力持ちな神社。この神社で健康をお祈りしよう！"))
    dataArray.append(PhotoData(id: 13, imageName: "geiko", title: "熱海芸妓見番", price: "1500", time: "30", detail:"芸妓さんの美しい踊りがみられる場所。熱海でしか見られない特別な踊りが鑑賞できる。演奏と踊りの息の合った公演を見よう！"))
    dataArray.append(PhotoData(id: 14, imageName: "benzaite", title: "弁財天女堂", price: "100", time: "10", detail:"音楽などを司る神様「弁財天」を祭る神社。ここで弁財天の像を見ながらお参りしよう！"))
    
    
    return dataArray
}


