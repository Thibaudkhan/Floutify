//
//  ArtistViewController.swift
//  Floutify
//
//  Created by user185203 on 1/7/21.
//

import UIKit
var album: [String] = ["Cobble","Terre"]
var myIndexArtist = 0



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

            let imageA = ImageCell(image: UIImage(named: "CobblestoneNew.png")! ,title:album[0])
            let imageB = ImageCell(image: UIImage(named: "GrassNew.png")! ,title:album[1])
            
            allImages.append(imageA)
            allImages.append(imageB)
            
            return allImages
        }
    
        func findAllArtist(){
            let allArtists: [String] = []

            
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
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            myIndexArtist = indexPath.row
            performSegue(withIdentifier: "segue", sender: self)

        }
        
        
    }
