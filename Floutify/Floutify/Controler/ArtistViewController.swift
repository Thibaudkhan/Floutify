//
//  ArtistViewController.swift
//  Floutify
//
//  Created by user185203 on 1/7/21.
//

import UIKit

class ArtistViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
        var images: [ImageCell] = []
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            images = createArray()
            tableView.delegate = self
            tableView.dataSource = self
            

            // Do any additional setup after loading the view.
        }
        
        func createArray() -> [ImageCell]{
            
            var allImages: [ImageCell] = []
            let txt = "CobblestoneNew.png"
                
            let imageA = ImageCell(image: UIImage(named: txt)! ,title:"Cobble")
            let imageB = ImageCell(image: UIImage(named: "GrassNew.png")! ,title:"Terre")
            
            allImages.append(imageA)
            allImages.append(imageB)
            
            return allImages
        }

    }


    extension ArtistViewController: UITableViewDataSource, UITableViewDelegate{
       
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return images.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let image = images[indexPath.row]
            print(image.title)
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "ArtistCell") as! ArtistCell
            cell.setImage(image: image)
            print(image.title)
            return cell
        }
    }
