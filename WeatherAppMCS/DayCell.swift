//
//  DayCell.swift
//  WeatherAppMCS
//
//  Created by MCS on 11/7/17.
//  Copyright © 2017 Zach Chandler. All rights reserved.
//

import Foundation
import UIKit

class DayCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var day: Day? {
        didSet {
            guard let day = day else { return }
            let name = day.name
            
            nameLabel.text = name
            let url = "http://openweathermap.org/img/w/"  + day.image + ".png"
            imageFromURL(urlString: url)
            imageView.image = UIImage(named: day.image)
            descriptionLabel.text = day.description
        }
    }
    func imageFromURL(urlString: String) {
        URLSession.shared.dataTask(with: NSURL(string: urlString)! as URL, completionHandler: { (data, response, error) -> Void in
            
            if error != nil {
                DispatchQueue.main.async {

                    self.imageView.image = #imageLiteral(resourceName: "CircleSun")
                }
                return
            }
            DispatchQueue.main.async {
                let image = UIImage(data: data!)
                self.imageView.image = image
            }
        }).resume()
    }
}
