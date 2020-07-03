//
//  ContentView.swift
//  searchmovie
//
//  Created by Man Kit Tsui on 7/2/20.
//  Copyright © 2020 Man Kit Tsui. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            
            moviesearchVC()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
