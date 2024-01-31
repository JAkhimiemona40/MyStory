//
//  DetailViewController.swift
//  MyStory
//
//  Created by Joshua Akhimiemona on 1/31/24.
//

import UIKit

class DetailViewController: UIViewController {
    
    //property
    var list: Descript?
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contextLabel: UITextView!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let list = list {
            print(list.title)
        }
        
        if let list = list {
            // Configure the dinosaur image and dynamic labels
            imageView.image = list.image
            titleLabel.text = list.title
            contextLabel.text = list.context
            
        }
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
