# hkMotus
## It is a animation effect for UITableView

### See the animation:

![Image 01](https://github.com/heuristisk/hkMotus/blob/master/demo.gif?raw=true)

![Image 02](https://github.com/heuristisk/hkMotus/blob/master/demo1.gif?raw=true)

## How to setup it

Add the pod **'hkMotus'** in your podfile or just copy the UITableViewExtension.swift file in your project:

*Example:*

> source 'https://github.com/CocoaPods/Specs.git'
> 
> use_frameworks!
> 
> target 'Sample' do
>   pod 'hkMotus'
> end

## How to use

It is very simple, after you import it via pod or copy the extention file, just invoke method **`tableView.reloadData(effect: .roll)`** on yor code. If you want to see it running, clone the sample project. Good luck!

```swift
// ViewController.swift
import UIKit
import hkMotus

class ViewController: UITableViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tableView.reloadData(effect: .roll)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = String("Row number \(indexPath.row)")
        return cell
    }
}
```