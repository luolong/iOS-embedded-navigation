//
//  ViewController.swift
//  UINavigationControllerLab
//
//  Created by Roland Tepp on 08/01/2019.
//  Copyright © 2019 Indoor Ninja. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    enum Season: String {
        case winter
        case spring
        case summer
        case fall
        
        init?(of month: Int?) {
            guard let month = month else {
                return nil
            }
            switch month {
            case 1, 2, 12:
                self = .winter
            case 3, 4, 5:
                self = .spring
            case 6, 7, 8:
                self = .summer
            case 9, 10, 11:
                self = .fall
            default:
                return nil
            }
        }
        
        func image() -> UIImage? {
            return UIImage(named: self.rawValue)
        }
    }

    @IBOutlet weak var headerImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let season = Season(of: DateComponents().month) {
            headerImage.image = season.image()
        }
    }


}

