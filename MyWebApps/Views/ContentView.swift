//
//  ContentView.swift
//  MyWebApps
//
//  Created by Abhas Kumar on 5/22/20.
//  Copyright © 2020 Abhas Kumar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView{
            List {
                NavigationLink(destination: DetailView(url: "https://idrw.org")){
                        HStack {
                            Text("IRDW")
                        }
                    }
                    NavigationLink(destination: DetailView(url: "https://www.defencenews.in")){
                        HStack {
                            Text("Defence News")
                        }
                    }
                    NavigationLink(destination: DetailView(url: "https://www.worldometers.info/coronavirus/")){
                        HStack {
                            Text("World O Meter-Coronavirus")
                        }
                    }
                        NavigationLink(destination: DetailView(url: "https://www.worldometers.info/coronavirus/usa/california/")){
                            HStack {
                                Text("World O Meter-California")
                            }
                        }
                    NavigationLink(destination: DetailView(url: "https://robinhood.com")){
                                               HStack {
                                                   Text("Robinhood")
                                               }
                                           }
                        NavigationLink(destination: DetailView(url: "https://news.google.com/topstories?hl=en-US&gl=US&ceid=US:en")){
                            HStack {
                                Text("Google News")
                            }
                        }
                .navigationBarTitle("My Web Apps")
            }
                
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
