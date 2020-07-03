//
//  internetVC.swift
//  searchmovie
//
//  Created by Man Kit Tsui on 7/2/20.
//  Copyright © 2020 Man Kit Tsui. All rights reserved.
//

import SafariServices
import SwiftUI

struct internetVC: UIViewControllerRepresentable {
    
    let url: URL

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {
        
    }
    
    func makeUIViewController(context: Context) -> SFSafariViewController {
        let safariVC = SFSafariViewController(url: self.url)
        return safariVC
    }
}
