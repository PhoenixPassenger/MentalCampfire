//
//  VideoViewController.swift
//  MentalCampfire
//
//  Created by Rodrigo Silva Ribeiro on 06/05/20.
//  Copyright © 2020 Rodrigo Silva Ribeiro. All rights reserved.
//

import UIKit
import WebKit
class VideoViewController: UIViewController {
    
    var video:Video? = nil
    
    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.titulo.text = video!.titulo
        getVideo(videoCode: video!.url)
    }
    
    func getVideo(videoCode:String){
        let url = URL(string: "https://www.youtube.com/embed/\(videoCode)")
        webView.load(URLRequest(url: url!))
    }
    

    


}
