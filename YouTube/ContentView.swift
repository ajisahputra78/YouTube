//
//  ContentView.swift
//  YouTube
//
//  Created by Aji_sahputra on 13/11/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      ZStack{
        TabView{
          Home()
            .tabItem {
              Image(systemName: "house.fill")
              Text("Beranda")
            }
          
          Home()
            .tabItem {
              Image(systemName: "paperplane.fill")
              Text("Explorasi")
            }
          
          Home()
            .tabItem {
              Image(systemName: "tray.fill")
              Text("Subscription")
            }
          
          Home()
            .tabItem {
              Image(systemName: "envelope.fill")
              Text("Kotak Masuk")
            }
          
          Home()
            .tabItem {
              Image(systemName: "play.rectangle.fill")
              Text("Koleksi")
            }
        }
        
        .accentColor(.red)
        
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
  var body : some View {
    NavigationView {
      Content()
      
        .navigationBarItems(
          
          leading:
            HStack{
              Button(action: {print("Hello Button")}){
                Image("yt")
                  .renderingMode(.original)
                  .resizable()
                  .frame(width: 90, height: 50)
              }
            },
              
          trailing:
            HStack(spacing: 20){
              Button(action: {print("Hello Button")}){
                Image(systemName: "tray.full")
                  .foregroundColor(.secondary)
              }
              
              Button(action: {print("Hello Button")}){
                Image(systemName: "video.fill")
                  .foregroundColor(.secondary)
              }
              
              Button(action: {print("Hello Button")}){
                Image(systemName: "magnifyingglass")
                  .foregroundColor(.secondary)
              }
              
              Button(action: {print("Hello Button")}){
                Image("aji")
                  .renderingMode(.original)
                  .resizable()
                  .frame(width: 25, height: 30)
                  .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
              }
          }
      )
    }
  }
}

struct Content : View {
  var body : some View {
    
    List{
      
      CellContent(imageContent: "xcode", profileContent: "aji", judul: "Xcode For IOS Apps", description: "ditonton 40k x - 1 hari yang lalu", durasi: "12.35")
      
      CellContent(imageContent: "swiftui", profileContent: "aji", judul: "Tutorial SwiftUI for IOS Apps", description: "ditonton 300 x - 6 jam yang lalu", durasi: "30.49")
      
      CellContent(imageContent: "retangle", profileContent: "aji", judul: "SwiftUI Retangle", description: "ditonton 129k x - 3 bulan yang lalu", durasi: "08.22")
      
      CellContent(imageContent: "testflight", profileContent: "aji", judul: "Test Filght Apps IOS", description: "ditonton 278M x - 6 bulan yang lalu", durasi: "17.52")
    }
  }
}


//componen cell

struct CellContent : View {
  
  var imageContent : String
  var profileContent : String
  var judul : String
  var description : String
  var durasi : String
  
  
  
  var body: some View {
    
    //Content 1
    VStack{
      
      ZStack(alignment: .bottomTrailing){
        Image(imageContent)
          .resizable()
          .frame(width: 310, height: 150)
          .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
        
        Text(durasi)
          .padding(.all, 5)
          .foregroundColor(.white)
          .font(.caption)
          .background(Color.black)
          .cornerRadius(5)
          .padding(.trailing, 5)
          .padding(.bottom, 5)
        
      }
      
      HStack(spacing: 20){
        Image(profileContent)
          .resizable()
          .frame(width: 30, height: 30)
          .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        
        VStack(alignment: .leading){
          Text(judul).font(.headline)
          
          HStack{
            Text(description).font(.caption2)
          }
        }
        
        Spacer()
        Image(systemName: "list.bullet")
        
      }
    }
  }
}
