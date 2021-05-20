//
//  ViewController.swift
//  iQuiz
//
//  Created by Rawuda Jemal on 5/19/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    

    @IBOutlet weak var tableView: UITableView!
    
    var count: Int = 0
    
    let topics = ["Math", "Geography", "Sports"]
    
    let subtitle = ["Basic multiplication", "Name that US City", "Basketball"]
    
    let question = [[["What is 19 * 29?"], ["What is 8 * 36"]],[["What is the capitol of Nebraska"], ["What city has the highest minimum wage?"]] , [["What jersey number is Micheal Jordan's"], ["What team did Kareem Abdul-Jabbar finish his career with"]]]
    
    let options = [[["210", "551", "681", "542"], ["288", "391", "360", "810"]], [["Lincoln", "Omaha", "Manou", "Nebraska City"], ["Emmeryville", "Seattle", "Boston", "NYC"]], [["20", "22", "23", "11"], ["LA Lakers", "Portland Blazers", "Chicago Bulls", "Houston Rockets"]]]
    
    let answer = [[[1], [0]],[[0], [0]], [[2], [0]]]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.tableFooterView = UIView()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return(topics.count)
    }

}

