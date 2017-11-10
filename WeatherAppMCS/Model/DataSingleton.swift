//
//  DataSingleton.swift
//  WeatherAppMCS
//
//  Created by MCS on 11/8/17.
//  Copyright © 2017 Zach Chandler. All rights reserved.
//

import Foundation
import SwiftyJSON
import Alamofire
import CoreData

class DataSingleton: NSObject {
    static let sharedInstance = DataSingleton()
    
    var currentWeather: String = ""
    var cities: [City] = []
    var weather: Weather?
    
    var json: JSON!
    var forcast: JSON!

    fileprivate override init() {
        super.init()
        getWeatherFromCoreData()
    }
    func getData(name: String ,closure: @escaping (Bool) -> Void) {
        let url = Symbols.weatherHead + name + Symbols.key
        //print(url)
        Alamofire.request(url).responseJSON { response in
            if let json = response.result.value {
                self.currentWeather = name
                self.json = JSON(json)
                self.updateWeather()
                self.getForcast(name: name, closure: { (didFinish) in
                    if didFinish {
                        closure(true)
                    } else {
                        closure(false)
                    }
                })
            } else {
                closure(false)
            }
        }
    }
    func getForcast(name: String ,closure: @escaping (Bool) -> Void) {
        let url = Symbols.forcastHead + name + Symbols.key
        Alamofire.request(url).responseJSON { response in
            if let json = response.result.value {
                print("JSON: \(json)") // serialized json response
                self.forcast = JSON(json)
                closure(true)
            } else {
                closure(false)
            }
        }
    }
    
    func updateWeather(){
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let request: NSFetchRequest<WeatherCity> = WeatherCity.fetchRequest()
        
        do{
            let results = try context.fetch(request)
            if results.count == 1 {
                let result = results[0]
                result.setValue(currentWeather, forKey: "json")
                do{
                    try context.save()
                    print("Saved updated weather")
                }
                catch{
                    print("Failed updated weather save")
                }
                
            }else{
                //there is nothing saved ie first time user
                //so I will save a new object
                
                let newWeather = NSEntityDescription.insertNewObject(forEntityName: "WeatherCity", into: context)
                newWeather.setValue(currentWeather, forKey: "json")
                
                do{
                    try context.save()
                    print("Saved weather for the first time")
                }
                catch{
                    print("Failed weather save")
                }
            }
        }
        catch{
            print("error")
        }
    }
    func getWeatherFromCoreData(){
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "WeatherCity")
        
        do{
            let results = try context.fetch(request)
            if results.count == 1 {
                print("successfully received weather from core data")
                if let name = (results[0] as AnyObject).value(forKey: "json") as? String{
                    self.currentWeather = name
                }
            }else{
                print("Welcome first time user")
            }
        }
        catch{
        }
    }    
}

