//
//  ViewController.swift
//  CourseDisplayApp
//
//  Created by Mummadi,Hari Hara on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    let courses = [["img01" , " 44555" , " Network Security" , " Fall 2022"],
                   ["img02" , "44643", "iOS" , "Spring 2022"],
                   [ "img03" , "44656" , "Data Streaming" , "Summer 2022"]
    ]
    
    var imageNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Load the first course details (image, courseNum, title and sem)
        displayImage.image = UIImage(named: courses[0][0])
        CrsNum.text = courses[0][1]
        CrsTitle.text = courses[0][2]
        CrsSem.text = courses[0][3]
        updateUI(imageNumber)
        // Previous button should be disabled
        previousbutton.isEnabled = false
    }

    @IBOutlet weak var displayImage: UIImageView!
    @IBOutlet weak var CrsNum: UILabel!
    
    @IBOutlet weak var CrsSem: UILabel!
    @IBOutlet weak var CrsTitle: UILabel!


    @IBOutlet weak var previousbutton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    

    @IBAction func previouButtonClick(_ sender: UIButton) {
    
        // next button should be enabled
        nextButton.isEnabled = true
    
        // update the UI
        imageNumber -= 1
        updateUI(imageNumber)
        
        // When the course position is at 0 , previous button should be disabled.
        if(imageNumber == 0){
            previousbutton.isEnabled = false
        }
    }
    
    @IBAction func nextButtonClick(_ sender: UIButton) {
        // update the UI
        imageNumber += 1
        updateUI(imageNumber)
        // previous button should be enabled
        previousbutton.isEnabled = true
        // once you reach the end of array , the next button should be disabled
        if(imageNumber == courses.count-1){
            nextButton.isEnabled = false
        }
    }
    
    func updateUI(_ imageNum : Int){
        displayImage.image = UIImage(named: courses[imageNum][0])
        CrsNum.text = courses[imageNum][1]
        CrsTitle.text = courses[imageNum][2]
        CrsSem.text = courses[imageNum][3]
        
    }
}

