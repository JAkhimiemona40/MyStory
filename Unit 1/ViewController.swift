//
//  ViewController.swift
//  MyStory
//
//  Created by Joshua Akhimiemona on 1/31/24.
//

import UIKit

class ViewController: UIViewController {
    // Create individual Desctiptions using Descript model
    let basics = Descript(title:"Origin", image: UIImage(named: "captain america")!, context: "Steve Rogers discovered his powers through the Super-Soldier Serum, a top-secret experiment aimed at creating the ultimate soldier during World War II. His origin story revolves around his unwavering determination, bravery, and sense of justice, which caught the attention of Dr. Abraham Erskine, the scientist behind the Super-Soldier program.")
    let hobbies = Descript(title:"Villain", image: UIImage(named: "cap vs red skull")!, context: "Captain America's main villain is often depicted as the sinister Red Skull, the ruthless leader of Hydra and the embodiment of Nazi terror. Their adversarial relationship spans decades, with Red Skull symbolizing the darkest aspects of humanity that Captain America fights against.")
    let music = Descript(title:"City", image: UIImage(named: "cap in brooklyn")!, context: "Hailing from Brooklyn, New York, Captain America is revered as a symbol of freedom and heroism in his city and across the nation. Despite initial skepticism and challenges adjusting to the modern world after being frozen in ice for decades, Captain America's unwavering dedication to serving his country and protecting its ideals earns him widespread respect and admiration from both citizens and fellow superheroes alike.")
    
    //Array fro sorting
    var list: [Descript] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //storiing
        list = [basics, hobbies, music]
        
    }
    
    @IBAction func didTapDetail(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.list = list[0]
            } else if tappedView.tag == 1 {
                detailViewController.list = list[1]
            } else if tappedView.tag == 2 {
                detailViewController.list = list[2]
            } else {
                print("no selection made.")
            }
        }
    }
    
}

