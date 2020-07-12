//
//  DetailsVC.swift
//  WeatherApp
//
//  Created by MAKAN on 11.07.2020.
//  Copyright © 2020 YUNUS MAKAN. All rights reserved.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var sunImage: UIImageView!
    @IBOutlet weak var humidityImage: UIImageView!
    @IBOutlet weak var pressureImage: UIImageView!
    @IBOutlet weak var windSpeedImage: UIImageView!
    @IBOutlet weak var windDegImage: UIImageView!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var degreeLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var weatherForecastLabel: UILabel!
    @IBOutlet weak var weatherDescriptionLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var pressureLabel: UILabel!
    @IBOutlet weak var windSpeedLabel: UILabel!
    @IBOutlet weak var windDegLabel: UILabel!
   
    @IBOutlet weak var humidityValueLabel: UILabel!
    @IBOutlet weak var pressureValueLabel: UILabel!
    @IBOutlet weak var windSpeedValueLabel: UILabel!
    @IBOutlet weak var windDegValueLabel: UILabel!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.topItem?.leftBarButtonItem = UIBarButtonItem(title: "< Back", style: UIBarButtonItem.Style.plain, target: self, action: #selector(backButtomClicked))
    }
    
    @objc func backButtomClicked(){
        self.dismiss(animated: true, completion: nil)
    }
    
}
