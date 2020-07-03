//
//  moviesearchVC.swift
//  searchmovie
//
//  Created by Man Kit Tsui on 7/2/20.
//  Copyright © 2020 Man Kit Tsui. All rights reserved.
//

import SwiftUI

struct moviesearchVC: View {
    
    @ObservedObject var movieSearchState = moviesearch()
    
    var body: some View {
        NavigationView {
            List {
                searchbarVC(placeholder: "Search movies", text: self.$movieSearchState.query)
                    .listRowInsets(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                
                loadVC(isLoading: self.movieSearchState.isLoading, error: self.movieSearchState.error) {
                    self.movieSearchState.search(query: self.movieSearchState.query)
                }
                
                if self.movieSearchState.movies != nil {
                    ForEach(self.movieSearchState.movies!) { movie in
                        NavigationLink(destination: moviedetailVC(movieId: movie.id)) {
                            VStack(alignment: .leading) {
                                Text(movie.title)
                                Text(movie.yearText)
                            }
                        }
                    }
                }
                
            }
            .onAppear {
                self.movieSearchState.startObserve()
            }
            .navigationBarTitle("Search")
        }
    }
}

//struct moviesearchVC_Previews: PreviewProvider {
//    static var previews: some View {
//        moviesearchVC()
//    }
//}
