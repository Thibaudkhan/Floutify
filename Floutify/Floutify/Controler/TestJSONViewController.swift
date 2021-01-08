//
//  TestJSONViewController.swift
//  Floutify
//
//  Created by Sarah Visage on 08/01/2021.
//

import UIKit

class TestJSONViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //URL du JSON
        let urlString = "https://gist.githubusercontent.com/jasonbaldridge/2668632/raw/e56320c485a33c339791a25cc107bf70e7f1d763/music.json"

        let url = URL(string: urlString)

        guard url != nil else {
            return
        }

        let session = URLSession.shared
        print(session)
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            
            // Check for errors
            if error == nil && data != nil {
    
                // Parse JSON
                let decoder = JSONDecoder()
                
                do {
                    let json_decoded = try decoder.decode([Artist].self, from: data!)
                    
                    print(json_decoded)
                    
                }
                catch {
                    print("Error JSON Parsing : \(error)")
                }
            }
        }
        print(dataTask)
        // Make the API Call
        dataTask.resume()
    }
}
