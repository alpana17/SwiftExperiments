//
//  ViewController.swift
//  SwiftMediaPlayer
//
//  Created by Alpana on 9/29/15.
//  Copyright © 2015 Raxa Health Information Services. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue,
        sender: AnyObject?) {
            let destination = segue.destinationViewController as!
            AVPlayerViewController
            var url = NSURL(string:
                "https://s3.amazonaws.com/kargopolov/kukushka.mp3")
            if(segue.identifier == "Video"){
                url = NSURL(string: "http://www.ebookfrenzy.com/ios_book/movie/movie.mov")
            }
            
            destination.player = AVPlayer(URL: url!)
    }
}

