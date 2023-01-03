//
//  ContentView.swift
//  SwiftUIListViewDemoApp
//
//  Created by ryota on 2023/01/03.
//

import SwiftUI

struct ContentView: View {
    let catsList: [Cats] = [
        Cats(image: "hijiki", name: "ひじき", birth: "2019年4月20日"),
        Cats(image: "thukushi", name: "つくし", birth: "2021年5月30日")]
    
    var body: some View {
        NavigationView {
            List(catsList) { item in
                CatListRow(catData: item)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
