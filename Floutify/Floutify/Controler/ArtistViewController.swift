//
//  ArtistViewController.swift
//  Floutify
//
//  Created by user185203 on 1/7/21.
//

import UIKit

var album: [String] = ["Cobble","Terre"]
var myIndexArtist = 0
var myArtist:[Album] = []


class ArtistViewController: UIViewController {

    
    
        var texts: [TextCell] = []
        var artists: [Artist] = []
        var artistsList: [Artist] {
          get { return artists }
          set(value) { artists = value}
           
        }
    @IBOutlet weak var tableView: UITableView!
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            getJSON()
           
            

        }
    
        
        func loadArray(artists: [Artist]) {
            texts = createArray(artists: artists)
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    
    
        func createArray(artists: [Artist]) -> [TextCell]{
            
            
            //print("OSEKUUUUUUUUUUR \(artists)")
            var allText: [TextCell] = []
            for item in artists {
                allText.append(TextCell(title: item.name))
                print(item.name)
            }
           
            
            //tableView.reloadData()
            return allText
        }

        // Integration of the JSON datas //
        func getJSON() {
            
           
            //URL of the JSON
            let urlString = "https://gist.githubusercontent.com/jasonbaldridge/2668632/raw/e56320c485a33c339791a25cc107bf70e7f1d763/music.json"

            // Transform the Url String to an URL Object
            let url = URL(string: urlString)

            guard url != nil else {
                return
            }

            let session = URLSession.shared
            let dataTask = session.dataTask(with: url!) { [self] (data, response, error) in
                
                // Check for errors
                if error == nil && data != nil {
        
                    // Parse JSON
                    let decoder = JSONDecoder()
                    
                    do {
                        
                        let json_decoded = try decoder.decode([Artist].self, from: data!)
                        //artistsList.append(contentsOf: json_decoded)
                        self.artistsList = json_decoded
                        
                        self.loadArray(artists: json_decoded)

                        //print(artistsList)
                    }
                    catch {
                        print("Error JSON Parsing : \(error)")
                    }
                }
            }
            
            // Make the API Call
            dataTask.resume()
        }
    
    
}


    extension ArtistViewController: UITableViewDataSource, UITableViewDelegate{
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            
            return texts.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let text = texts[indexPath.row]
            print(text.title)
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "ArtistCell") as! ArtistCell
            cell.setText(text: text)
            return cell
        }
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            myIndexArtist = indexPath.row
            myArtist = artists[myIndexArtist].albums
            performSegue(withIdentifier: "segue", sender: self)
        }
        
        
    }
