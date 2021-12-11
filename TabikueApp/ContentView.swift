//
//  ContentView.swift
//  TabikueApp
//
//  Created by 佐々木翔太 on 2021/08/20.
//

import SwiftUI
import MapKit
import AVKit

struct Spot: Identifiable{
    let id = UUID()
    let name:String
    let latitude: Double
    let longitude: Double
    var coordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

struct ContentView: View {
    @State var selectedTag = 1
    var body: some View {
        //タブバー
        TabView(selection: $selectedTag) {
            
            HistoryTabView()
                .tabItem {
                    Image(systemName: "clock.fill")
                    Text("履歴") }.tag(1)
            MapTabView()
                .tabItem {
                    Image(systemName: "map.fill")
                    Text("マップ") }.tag(2)
            
            StampcardTabView()
                .tabItem {
                    Image(systemName: "flame.fill")
                    Text("スタンプカード") }.tag(3)
        }
        .font(.largeTitle)
        .background(Color(red: 0.9, green: 0.9, blue: 0.8))
    }
}

struct Page: View{
    let w:CGFloat = UIScreen.main.bounds.width * 3/5
    let h:CGFloat = 200
    let str:String
    
    var body: some View{
        ZStack{
            Color.gray
                .frame(width: w, height: h)
                .cornerRadius(8)
            Text(str)
                .font(.largeTitle)
                .foregroundColor(.white)
        }
    }
}

//マップ
struct MapTabView: View{
    let spotlist = [
        Spot(name: "MOA美術館",latitude: 35.1092423, longitude: 139.075333),
        Spot(name: "釜鳴屋七夫婦像",latitude: 35.09652, longitude: 139.07622),
        Spot(name: "熱海フルーツキング",latitude: 35.09771, longitude: 139.07481),
        Spot(name: "熱海プリン食堂",latitude: 35.05713, longitude: 139.06832),
        Spot(name: "恋人の聖地",latitude: 35.0960929, longitude: 139.0770094),
        Spot(name: "サンレモ公園",latitude: 35.0902064, longitude: 139.0755415),
        Spot(name: "マリンスパあたみ",latitude: 35.0910447, longitude: 139.0745437),
        Spot(name: "熱海遊覧船サンレモ",latitude: 35.0931209, longitude: 139.0751982),
        Spot(name: "熱海山口美術館",latitude: 35.0930945, longitude: 139.073621),
        Spot(name: "熱海親水公園",latitude: 35.0941611, longitude: 139.0751016),
        Spot(name: "大六天尊神社",latitude: 35.0977032, longitude: 139.0695113),
        Spot(name: "湯前神社",latitude: 35.0983352, longitude: 139.0713733),
        Spot(name: "熱海芸妓見番",latitude: 35.094859, longitude: 139.0719473),
        Spot(name: "弁財天女堂",latitude: 35.0969395, longitude: 139.0643942),
    ]
    
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 35.09730, longitude: 139.07100),
                                           latitudinalMeters: 1000.0,
                                           longitudinalMeters: 1000.0)
    
    var body: some View{
        ZStack{
            
            //アノテーション
            Map(coordinateRegion: $region,
                annotationItems: spotlist, annotationContent: { spot in MapPin(coordinate: spot.coordinate, tint: .red)})
                .edgesIgnoringSafeArea(.bottom)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            
            ScrollView(.horizontal, showsIndicators: false){
                LazyHStack{
                    ForEach(photoArray){ PhotoData in
                        PhotoView(photo: PhotoData)
                    }
                    
                }
            }
            .padding(.top, 500.0)
        }
    }
}

//履歴
struct HistoryTabView: View{
    var body: some View{
        NavigationView{
            List(photoArray){ item in
                NavigationLink(destination: PhotoDetailView(photo: item)){
                    RowView(photo: item)
                }
            }
            .navigationTitle(Text("履歴"))
        }
    }
}

//スタンプカード
struct StampcardTabView: View{
    @State var num:Int = 3
    @State var isFast = true
//    private let player = AVPlayer(url: Bundle.main.url(forResource: "スタンプ", withExtension: "mp4")!)
    var body: some View{
            ZStack{
                Image("StampCard5")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
//                HStack{
//                    Button(action:  {
//                        num += 1
//                    }, label: {
//                        Text("クリア")
//                            .font(.body)
//                    })
//                    Text("\(num)")
//                        .font(.title2)
//                        .fontWeight(.bold)
//                }
//                .position(x: 52.5, y: 192.2)
                
                Button(action:{
                    withAnimation{
                        isFast.toggle()
                    }
                }){
//                    Text(isFast ? "3/4" : "4/4")
                    Image(isFast ? "questionmark2" : "kakashi2")
                        .scaleEffect(0.8/2)
                        .position(x: 110, y: 510)
                    
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        MapTabView()
        HistoryTabView()
        StampcardTabView()
    }
}
