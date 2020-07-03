//
//  loadVC.swift
//  searchmovie
//
//  Created by Man Kit Tsui on 7/2/20.
//  Copyright © 2020 Man Kit Tsui. All rights reserved.
//

import SwiftUI

struct loadVC: View {
    
    let isLoading: Bool
    let error: NSError?
    let retryAction: (() -> ())?
    
    var body: some View {
        Group {
           if error != nil {
                HStack {
                    Spacer()
                    VStack(spacing: 4) {
                        Text(error!.localizedDescription).font(.headline)
                        if self.retryAction != nil {
                            Button(action: self.retryAction!) {
                                Text("Retry")
                            }
                            .foregroundColor(Color.blue)
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                    Spacer()
                }
            }
        }
    }
}
//
//struct loadVC_Previews: PreviewProvider {
//    static var previews: some View {
//        LoadingView(isLoading: true, error: nil, retryAction: nil)
//    }
//}
