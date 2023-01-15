//
//  ContentView.swift
//  SwiftUIPullToRefresh
//
//  Created by ryota on 2023/01/15.
//

import SwiftUI

struct ContentView: View {
    
    struct Cat: Identifiable {
        var id: Int
        let name: String
    }
    let cats: [Cat] = [Cat(id: 1, name: "ひじき"),Cat(id: 2, name: "つくし")]
    
    var body: some View {
        List {
            ForEach(cats) { cat in
                Text("\(cat.name)")
                    .padding()
            }
        }
    .refreshable {
            do {
                try await Task.sleep(nanoseconds: 2 * 1_000_000_000)
            } catch {}
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
