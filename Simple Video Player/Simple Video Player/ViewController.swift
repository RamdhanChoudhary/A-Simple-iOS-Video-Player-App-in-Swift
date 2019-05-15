//
//  ViewController.swift
//  Simple Video Player
//
//  Created by RAMDHAN CHOUDHARY on 15/05/19.
//  Copyright © 2019 RDC. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //TODO : Make Sure Add and copy "SampleVideo.mp4" file in project before play
    }
    
    @IBAction func playWebVideo(_ sender: Any) {
        
        guard let url = URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4") else {
            return
        }
        // Create an AVPlayer, passing it the HTTP Live Streaming URL.
        let player = AVPlayer(url: url)
        let controller = AVPlayerViewController()
        controller.player = player
        present(controller, animated: true) {
            player.play()
        }
    }
    
    @IBAction func playLocalVideo(_ sender: Any) {

        guard let path = Bundle.main.path(forResource: "SampleVideo", ofType: "mp4") else {
            return
        }
        let videoURL = NSURL(fileURLWithPath: path)
        
        // Create an AVPlayer, passing it the local video url path
        let player = AVPlayer(url: videoURL as URL)
        let controller = AVPlayerViewController()
        controller.player = player
        present(controller, animated: true) {
            player.play()
        }
    }
    
}

