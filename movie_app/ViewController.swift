//
//  ViewController.swift
//  movie_app
//
//  Created by Qenawi on 9/27/20.
//  Copyright © 2020 qenawi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textArea: UITextView!
    @IBOutlet weak var counter: UILabel!
    @IBOutlet weak var progress: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        progress.hidesWhenStopped=true
        progress.startAnimating()
        AlamoFireNetWorkLayer().pullNewMovies(completion: {movies in
            print("\(movies?.movies?.count ?? 0)")
            self.progress.stopAnimating()
            self.textArea.text = " \(String(describing: movies.self)) "
            self.counter.text = " \(String(describing: movies?.movies?.count ?? 0 )) "
        })
    }


}

