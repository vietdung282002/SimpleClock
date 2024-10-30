//
//  ViewController.swift
//  SimpleClock
//
//  Created by Tong Viet Dung on 29/10/2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    private var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
        
        updateTime()
    }
    
    @objc private func updateTime(){
        let currentTime = Date()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:MM:ss"
        
        timeLabel.text = formatter.string(from: currentTime)
        
    }
    
    deinit {
        timer?.invalidate()
    }


}

