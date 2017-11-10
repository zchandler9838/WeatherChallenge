//
//  ViewController.swift
//  WeatherAppMCS
//
//  Created by MCS on 11/7/17.
//  Copyright © 2017 Zach Chandler. All rights reserved.
//

import UIKit
import GooglePlaces
import SwiftyJSON

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var sunImage: UIImageView!
    @IBOutlet weak var cloud1: UIView!
    @IBOutlet weak var cloud2: UIView!
    @IBOutlet weak var cloud3: UIView!

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var subTextiew: UITextView!
    @IBOutlet weak var tempLabel: UILabel!
    
    private var days: [Day] = [] 
    private var celsius = false
    private var city: City? {
        didSet {
//            guard let city = city else { return }

        }
    }
    
    @IBAction func search( _sender: UIButton) {
        let acController = GMSAutocompleteViewController()
        acController.delegate = self
        present(acController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
        parseOldCity()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func parseOldCity() {
        if DataSingleton.sharedInstance.json != nil {
            parseCurrentWeather(json: DataSingleton.sharedInstance.json)
            self.parseForecast(json: DataSingleton.sharedInstance.forcast)
            self.collectionView.reloadData()

        } else {
            if DataSingleton.sharedInstance.currentWeather != "" {
                DataSingleton.sharedInstance.getData(name: DataSingleton.sharedInstance.currentWeather, closure: { complete in
                    if complete == true {
                        self.parseCurrentWeather(json: DataSingleton.sharedInstance.json)
                        self.parseForecast(json: DataSingleton.sharedInstance.forcast)
                        self.collectionView.reloadData()

                    } else {
                        DataSingleton.sharedInstance.getData(name: "London", closure: { complete in
                            if complete == true {
                                self.parseCurrentWeather(json: DataSingleton.sharedInstance.json)
                                self.parseForecast(json: DataSingleton.sharedInstance.forcast)
                                self.collectionView.reloadData()
                            } else {
                            }
                        })
                    }
                })
            }
            
        }
    }
    func setUp() {
        sunImage.layer.cornerRadius = sunImage.frame.size.height/2
        sunImage.layer.masksToBounds = true
        cloud1.layer.cornerRadius = cloud1.frame.size.height/2
        cloud1.layer.masksToBounds = true
        cloud2.layer.cornerRadius = cloud2.frame.size.height/2
        cloud2.layer.masksToBounds = true
        cloud3.layer.cornerRadius = cloud3.frame.size.height/2
        cloud3.layer.masksToBounds = true
        descriptionTextView.isUserInteractionEnabled = false
        subTextiew.isUserInteractionEnabled = false
        if DataSingleton.sharedInstance.currentWeather != "" {
        }
    }
    func parseForecast(json: JSON) {
        if let forecast = json["list"].arrayObject {
            var value = 0
            for day in forecast {
                let nextDate = Calendar.current.date(byAdding: .day, value: value, to: Date())
                let formatter = DateFormatter()
                formatter.dateFormat = "dd.MM"
                let result = formatter.string(from: nextDate!)
                let subJson = JSON(day)
                let weatherTemp = subJson["main"]["temp"].stringValue
                let far = (weatherTemp as NSString)
                let temp = (far.doubleValue * 1.8) - 459.67
                let fTemp = "~" + String(format: "%.0f°", temp)
                let weatherIcon = subJson["weather"][0]["icon"].stringValue
                
                print(subJson)
                
                let day = Day(name: result, description: fTemp, image: weatherIcon)
                days.append(day)
                value += 1
            }
        }
        collectionView.reloadData()
    }
    func imageFromURL(urlString: String) {
        URLSession.shared.dataTask(with: NSURL(string: urlString)! as URL, completionHandler: { (data, response, error) -> Void in
            
            if error != nil {
                DispatchQueue.main.async {
                    
                    self.sunImage.image = #imageLiteral(resourceName: "CircleSun")
                }
                return
            }
            DispatchQueue.main.async {
                let image = UIImage(data: data!)
                self.sunImage.image = image
            }
        }).resume()
    }
    func getParseData(json: JSON) {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        let result = formatter.string(from: date)
        let weather = json["weather"]
        var description = ""
        let weatherIcon = json["weather"][0]["icon"].stringValue
        let url = "http://openweathermap.org/img/w/"  + weatherIcon + ".png"
        imageFromURL(urlString: url)
        if let mainDesc = weather[0]["main"].string {
            description = "\(mainDesc) \n"
        }
        if let descriptionWeather = weather[0]["description"].string {
            description = description + descriptionWeather
        }
        subTextiew.text =  description
        
        if let name = json["name"].string {
            titleLabel.text = name
        }
        
        let weatherTemp = json["main"]["temp"].stringValue
        let far = (weatherTemp as NSString)
        let temp = (far.doubleValue * 1.8) - 459.67
        tempLabel.text = String(format: "%.0f°", temp)
        let humidity = json["main"]["humidity"].stringValue
        let pressure = json["main"]["pressure"].stringValue
        let country = json["sys"]["country"].stringValue
        subTitleLabel.text = country
        let subtext = "Humidity: " + humidity + "\nPressure: " + pressure
        descriptionTextView.text = result + "\n" + subtext
    }
    func parseCurrentWeather(json: JSON){
        getParseData(json: json)
        collectionView.reloadData()
    }
    
    func confirmationAlert(place: String, city: City) {
        let alertView = UIAlertController(title: "Are you sure?", message: "Search for \(place)", preferredStyle: .alert)
        alertView.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default, handler:{(action) in
            DataSingleton.sharedInstance.getData(name: place, closure: { complete in
                if complete == true {
                    self.parseCurrentWeather(json: DataSingleton.sharedInstance.json)
                } else {
                    self.errorAlert()
                }
            })
        }))
        alertView.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
        self.present(alertView, animated: true, completion: nil)
    }
    func errorAlert() {
        let alertView = UIAlertController(title: "Whoops...", message: "Something Went Wrong! Please try again and search for a city.", preferredStyle: .alert)
        alertView.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.default, handler: nil))
        self.present(alertView, animated: true, completion: nil)
    }
    func setDegrees(){

    }
}
extension ViewController: GMSAutocompleteViewControllerDelegate {
    
    // Handle the user's selection.
    func viewController(_ viewController: GMSAutocompleteViewController, didAutocompleteWith place: GMSPlace) {
        var searchResults = ""
        searchResults = place.name
        NSLog(searchResults)
        let tempCity = City(name: searchResults, state: place.name, id: "", lat: String(place.coordinate.latitude), long: String(place.coordinate.longitude))

        dismiss(animated: true, completion: nil)
        self.confirmationAlert(place: searchResults, city: tempCity)

    }
    
    func viewController(_ viewController: GMSAutocompleteViewController, didFailAutocompleteWithError error: Error) {
        // TODO: handle the error.
        print("Error: \(error)")
        dismiss(animated: true, completion: nil)
    }
    
    // User cancelled the operation.
    func wasCancelled(_ viewController: GMSAutocompleteViewController) {
        print("Autocomplete was cancelled.")
        dismiss(animated: true, completion: nil)
    }
}
extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return days.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = (collectionView.dequeueReusableCell(withReuseIdentifier: "item", for: indexPath) as? DayCell)!
        cell.day = days[indexPath.row]
        return cell
    }
    
    
}
